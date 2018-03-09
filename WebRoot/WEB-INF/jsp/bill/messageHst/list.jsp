<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
 
<head>
   <title>消息通知列表</title>
</head>

<body>
			<div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">消息通知单</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div id="dialog"  style="display:none">
                   	 	<form>
                   	 	<div class="formcol">
                   	 	<span>接收人</span>
                   	 	<select  id="receiverman">
                   	 	</select>
                   	 	</div>
                   	 	<br/>
                   	 	<div class="formcol">
                   	 	<span>优先级</span>
                   	 	<select  id="bodypriority">
                   	 	<option  value="0">
                   	 	 <span>低</span>
                   	 	</option>
                   	 	<option  value="10">
                   	 	 <span>中</span>
                   	 	</option>
                   	 	<option  value="20">
                   	 	 <span>高</span>
                   	 	</option>
                   	 	</select>
                   	 	</div>
                   	 	<br/>
                   	 	<div class="formcol">
                   	 	<span>主&nbsp&nbsp&nbsp题</span>
                   	 	<input type="text" id="bodytitle"/>
                   	 	</div>
                   	 	<br/>
                   	 	<div class="formcol">
                   	 	<span>内&nbsp&nbsp&nbsp容</span>
                   	 	<textarea id="messbody" cols=40 rows=4>
                   	 	</textarea>
                   	 	</div>
                   	 	<br/>
                   	 	</form>
                   		</div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                                <button id="btnUploadData" type="button" class="btn btn-primary" >新增</button>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="mainDataTables">
                                    <thead>
                                        <tr>
                                            <th>优先级</th>
                                            <th>主题</th>
                                            <th>接受时间</th>
                                            <th>状态</th>
                                            <th>发送人</th>
                                        </tr>
                                    </thead>
                                    
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
    <content tag="contentJavaScript">
    <!-- write ourself javascript in this content -->
    <script>
    $(document).ready(function() {
    	
    	$('#mainDataTables').dataTable( {
    		"processing": true,
            "serverSide": true,
            "ajax": {
    	        "url": '${ctx}/bill/messageHst/find7',
    	        "type": 'get',
    	        "dataSrc":"resultValues"
    	    },
    	    "language": {
                "url": "${ctx}/twitter/i18n_zh_cn.json"
                
            },
    	    "columns": [
    	                { "data": "priority" },
    	                { "data": "title_l2" },
    	                { "data": "receivetime" },
    	                { "data": "status" },
    	                { "data": "sender_l2"}
    	            ]
    	} );
    		
   $( "#dialog" ).dialog({
      autoOpen: false,   //规定初始化时窗口是否打开
      width:400,         //规定窗口宽度
      show: {            //规定窗口展开的效果
        effect: "blind",
        duration: 1000
      },
      hide: {           //规定窗口关闭时的效果
        effect: "explode",
        duration: 1000
      },
      buttons: {       //窗口按钮
          "提交": function() { 
        	      $.ajax(
                  {type : "post",
                      data:{receiver:$('#receiverman').val(),priority:$('#bodypriority').val(),title_l2:$('#bodytitle').val(),body_l2:$('#messbody').val()},
                      url : "${ctx}/bill/messageHst/add",
                      dataType : "JSON",
                      success:function()
                      {  alert("提交成功。");
                      $("#dialog").dialog("close");
               		$('#mainDataTables').dataTable().fnClearTable();
                      },
                      error:function(){
           	            alert("提交失败。");
           	          }
                         }
                     );
                       } ,
          "取消": function() {$(this).dialog('close');}
       },
      title:"新建通知",   //窗口标题
      modal:false     //是否要遮蔽底层窗体

    });

    $( "#btnUploadData" ).click(function() {
      $( "#dialog" ).dialog( "open" );
    }); 	
    	
    	//生成接收人列表
    	 $.ajax({
 	        type:"get",
 	        url:"${ctx}/bd/member/find7",
 	        dataType:"json",
 	        success:function(json){
 	           var  str;
	            for(i=0;i<json.resultValues.length;i++){
	            	  str="<option value='"+json.resultValues[i].id+"'>"+json.resultValues[i].name+"</option>";
	                $("#receiverman").append(str);
	            }
 	        },
 	        error:function(){
 	            alert("error!");
 	        }
 	    });
    	
    });
    
    </script>
    </content>   
</body>

</html>
