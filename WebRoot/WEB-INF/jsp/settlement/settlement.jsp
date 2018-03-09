<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>日结</title>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">日结</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<div id="divMsgBar" class="row">
		<div class="col-lg-12">
			<div class="alert alert-info alert-dismissable">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">&times;</button>
				<div id="spmsgBar"></div>
			</div>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="form-group">
					<label>请选择门店进行日结</label> <select class="form-control" id="sltstor">
					
						<option >---</option>
						<option value="6wUAAAADgJjM567U">米兰港汇店</option>
						<option value="6wUAAAAvQO/M567U">米兰世贸天阶店</option>
						<option value="6wUAAAADf5PM567U">黑铂汇益丰外滩源店</option>
					</select>
				</div>
				<div class="panel-heading">
					<button id="btnSettlement" type="button" class="btn btn-primary">日结</button>
				</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<button id="btnSettlementAudit" type="button"
						class="btn btn-primary">日结审核</button>
					<!-- /.table-responsive -->
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->

	<content tag="contentJavaScript"> <!-- write ourself javascript in this content -->
	<script>
		$(document).ready(function() {
			//绑定事件
			
			//绑定事件
			//alert("13333333");
			$("#btnSettlement").click(function() {
				var storid = $("#sltstor").val();
				//alert(storid);
				
				$.post("${ctx}/settlement", {
					storid : storid
				}, function(data, status) {
					var dispMsg = "";
					if (true == data.result) {
						dispMsg = "日结成功。";
					} else {
						dispMsg = "日结失败，返回消息：" + data.message;
					}

					$("#spmsgBar").html(dispMsg);
					$("#divMsgBar").show();

				}, "json");
			});
			//绑定事件
			$("#btnSettlementAudit").click(function() {
				$.post("${ctx}/settlementAudit", {
					id : "XXXXX"
				}, function(data, status) {
					var dispMsg = "";
					if (true == data.result) {
						dispMsg = "日结审核成功。";
					} else {
						dispMsg = "日结审核失败。失败原因：" + data.message;
					}

					$("#spmsgBar").html(dispMsg);
					$("#divMsgBar").show();

				}, "json");
			});
			//隐藏消息栏位
			$("#divMsgBar").hide();
		});
	</script> </content>
</body>
</html>