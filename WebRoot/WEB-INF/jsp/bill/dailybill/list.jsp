<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>日结单列表</title>
</head>
<body>
			<div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">单据资料 - 日结单</h1>
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
                                <button id="btnUploadData" type="button" class="btn btn-primary">上传数据</button>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="mainDataTables">
                                    <thead>
                                        <tr>
                                            <th>单号</th>
                                            <th>业务日期</th>
                                            <th>销售组织</th>
                                            <th>店长</th>
                                            <th>日结人</th>
                                            <th>单据状态</th>
                                            <th>创建者</th>
                                            <th>创建时间</th>
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
    	        "url": '${ctx}/bill/dailybill/find7',
    	        "type": 'get',
    	        "dataSrc":"resultValues"
    	    },
    	    "language": {
                "url": "${ctx}/twitter/i18n_zh_cn.json"
                
            },
    	    "columns": [
    	                { "data": "number" },
    	                { "data": "bizDate" },
    	                { "data": "SaleOrgUnit" },
    	                { "data": "FManager" },
    	                { "data": "FDayEndMan" },
    	                { "data": "billstate" },
    	                { "data": "Creator" },
    	                { "data": "createTime" }
    	            ]
    	} );
    	//绑定事件
    	$("#btnUploadData").click(function(){ 
        	$.post("${ctx}/bill/dailybill/upload", {id:"XXXXX"} , function (data,status){
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