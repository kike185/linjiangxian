<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
 
<head>
   <title>批次月结处理</title>
</head>
<body>
			<div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">批次月结处理</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div id="divMsgBar" class="row">
                <div class="col-lg-12">
                   <div class="alert alert-info alert-dismissable">
                    	<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                   	 	<div id="spmsgBar">
                   	 	<form class="rowform">
                   	 	<table>
                   	 	<tr>
                   	 	<td>
                   	 	<lable>
                   	 	月结单号
                   	 	</lable>
                        <input type="text" id="number"/>                                           	 	
                   	 	</td>
                   	 	<td>
                   	 	<lable>
                   	 	月结日期
                   	 	</lable>
                   	 	 <input type="text" id="bizedate"/>                                           	 	
                   	 	
                   	 	</td>
                   	 	</tr>
                   	 	</table>
                   	 	</form>
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
                     	<button id="btnUploadData" type="button" class="btn btn-primary">月结处理</button>
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
   
    
    	
    	$('bizedate').daterangepicker( {
    		  presetRanges: [
    		    {text: 'My Range', dateStart: '03/07/08', dateEnd: 'Today' }
    		  ]
    		 } );
    	
    	
  //绑定事件
	$("#btnUploadData").click(function(){ 
    	$.post("${ctx}/bill/stateMonthly/uploadDtspData", {id:"XXXXX"} , function (data,status){
    		var dispMsg = "";
			if(true == data.result){
				dispMsg = "上传数据成功。";
			}
			else{
				dispMsg = "上传数据失败。失败原因：" + data.message;
			}
				
			$("#spmsgBar").html(dispMsg);
			$("#divMsgBar").show();
			
    		}, 
    		"json");
	});
	//隐藏消息栏位
	 $("#divMsgBar").hide();
    });
    </script>
    </content>   
</body>

</html>
