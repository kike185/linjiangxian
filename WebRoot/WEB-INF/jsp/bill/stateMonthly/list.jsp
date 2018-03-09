<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
   <title>批次月结查询</title>
</head>
<body>
			<div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">批次月结查询</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div id="divMsgBar" class="row">
                <div class="col-lg-12">
                   <div class="alert alert-info alert-dismissable">
                    	<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                   	 	<div id="spmsgBar">
                   		</div>
                   </div>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                     	<button id="selectData" type="button" class="btn btn-primary">查询</button>
                        </div>
                         <div id="divform">
                        <form class="rowform" id="batch_form">
                   	 	<table>
                   	 	<tr>
                   	 	<td>
                   	 	<lable  class="row_lbl">
                   	 	月结单号
                   	 	</lable>
                   	 	</td>
                   	 	<td>
                        <input type="text" id="number"/>                                           	 	
                   	 	</td>
                   	 	<td>
                   	 	<lable class="row_lbl">
                   	 	月结日期
                   	 	</lable>
                   	 	</td>
                   	 	<td>
                   	 	 <input type="text" id="bizedate"/>                                           	 	
                   	 	</td>
                   	 	<td>
                   	 	<lable class="row_lbl">
                   	 	创建日期
                   	 	</lable>
                   	 	</td>
                   	 	<td>
                   	 	 <input type="text" id="createdate"/>                                           	 	
                   	 	</td>
                   	 	</tr>
                   	 	<tr>
                   	 	<td>
                   	 	<lable class="row_lbl">
                   	 	库存组织
                   	 	</lable>
                   	 	</td>
                   	 	<td>
                   	 	 <select    id="saleOrgUnitID">
                   	 	 </select>
                   	 	</td>
                   	 	<td>
                   	 	<lable class="row_lbl">
                   	 	店长
                   	 	</lable>
                   	 	</td>
                   	 	<td>
                   	 	 <input type="text" id="manager"/>                                           	 	
                   	 	</td>
                   	 	<td>
                   	 	<lable  class="row_lbl">
                   	 	月结人
                   	 	</lable>
                   	 	</td>
                   	 	<td>
                   	 	 <input type="text" id="creater"/>                                           	 	
                   	 	</td>
                   	 	</tr>
                   	 	</table>
                   	 	</form>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="mainDataTables">
                                    <thead>
                                        <tr>
                                            <th>库存组织</th>
                                            <th>商品</th>
                                            <th>批次号</th>
                                            <th>数量</th>
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
    	        "url": '${ctx}/bill/stateMonthly/find7',
    	        "type": 'get',
    	        "dataSrc":"resultValues"
    	    },
    	    "language": {
                "url": "${ctx}/twitter/i18n_zh_cn.json"
                
            },
    	    "columns": [
    	                { "data": "orgunitname" },
    	                { "data": "matername" },
    	                { "data": "lotNumber" },
    	                { "data": "num" }
    	            ]
    	} );
    	var todaydate = new Date();
    	var today=todaydate.getFullYear();
    	today+='-'+todaydate.getMonth();
    	today+='-'+todaydate.getDate();
    	
   
    	$("#bizedate").datepicker({dateFormat:'yy-mm-dd'});
    	$( "#bizedate" ).val(today);
    	$("#createdate").datepicker({dateFormat:'yy-mm-dd'});
    	$( "#createdate" ).val(today);
    	$.datepicker.setDefaults( $.datepicker.regional[ "zh-CN" ] );

    	
   	 $("#batch_form").find("td").css("padding","10px");
   	 $("#divform").css("padding-bottom","10px");
   	 $("#batch_form td").find(".row_lbl").css("text-align","right");
  
	//隐藏消息栏位
	 $("#divMsgBar").hide();
	
	//生成库存组织列表
	 $.ajax({
	        type:"get",
	        url:"${ctx}/bd/storage/find7",
	        dataType:"json",
	        success:function(json){
	           var  str;
            for(i=0;i<json.resultValues.length;i++){
            	  str="<option value='"+json.resultValues[i].id+"'>"+json.resultValues[i].name+"</option>";
                $("#saleOrgUnitID").append(str);
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
