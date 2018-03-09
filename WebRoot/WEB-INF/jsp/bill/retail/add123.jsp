<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>零售单新增</title>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">零售单新增</h1>
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
					<label>零售单json</label> 
					<!-- <input type="text" class="form-control" id="txtjson"/> -->
					<textarea class="form-control" cols="50" rows="10" id="txtjson">{
    "id": null,
    "number": null,
    "saleOrgUnit": "6wUAAAADgJjM567U",
    "saleOrgUnitName": null,
    "urgent": null,
    "posNumber": null,
    "saleType": 0,
    "bizDate": null,
    "deliveryDate": null,
    "description": null,
    "billState": "14",
    "payState": "30",
    "invoiceState": null,
    "manager": "游丽萍",
    "saleMan": "6wUAAAADm7KA733t",
    "saleManName": null,
    "optometrist": null,
    "optNumber": "a57eee89-dc36-4493-a9a9-b87ed2ebec2f",
    "pickFlag": null,
    "pickDate": null,
    "policyNum": null,
    "sourceNumber": null,
    "saleInvoiceNo": null,
    "saleIssueBill": null,
    "dayEndDate": null,
    "dayEndFlag": null,
    "dayEndNumber": null,
    "dayEndTime": null,
    "phoneNumnber": "0000001",
    "memberCode": "000c0950-d603-4ec0-a406-5f9976176940",
    "totalAmount": 623,
    "amount": 623,
    "paid": 623,
    "diff": 0,
    "qty": null,
    "score": null,
    "customer": null,
    "discountMan": null,
    "print": null,
    "printCount": null,
    "purchase": null,
    "uploadedtoken": null,
    "dtspIsUploaded": null,
    "returnReason": null,
    "mymember": {
        "acceptEmail": 0,
        "acceptMail": 0,
        "acceptNo": null,
        "acceptSMS": 0,
        "age": null,
        "baseStatus": null,
        "birthday": "1428601000",
        "call": null,
        "certType": 0,
        "city": null,
        "community": null,
        "createTime": "1428913025483",
        "creator": null,
        "creditQuota": 0,
        "CU_Renamed": null,
        "Day_Renamed": null,
        "description": null,
        "education": null,
        "email": null,
        "familyCount": 0,
        "familyIncome": null,
        "gender": null,
        "homeTown": null,
        "id": "000c0950-d603-4ec0-a406-5f9976176940",
        "idCard": null,
        "interest": null,
        "job": null,
        "lastUpdateTime": "1428913025483",
        "lastUpdateUser": null,
        "liveAddress": null,
        "mobilePhonNo": "0000001",
        "Month_Renamed": null,
        "MSNNumber_Renamed": null,
        "name": "群哥牛逼",
        "nation": null,
        "number": null,
        "podInfo": null,
        "post": null,
        "postalcode": null,
        "postDate": "1428913025483",
        "qqNumber": null,
        "wxNumber": null,
        "remark": null,
        "simpleName": null,
        "sowntown": null,
        "telbackupno": null,
        "telephoneNo": null,
        "telephoneNo_1": null,
        "usedCreditQuota": 0,
        "vehicleType": 0,
        "vipDegree": 0,
        "workUnit": null,
        "workZipCode": null,
        "Year_Renamed": null,
        "cardGrade": null,
        "dtspIsUploaded": 1,
        "Id": null,
        "CreateTime": "1429091721",
        "Creator": null,
        "LastUpdateTime": "1429091721",
        "LastUpdateUser": null,
        "Number": null
    },
    "entry": [
        {
            "id": null,
            "material": {
                "number": "P-201406-0003",
                "priceRange": 15,
                "baseUnit": null,
                "type": null,
                "name": "诺清洁净纸10片/盒",
                "typeInclude": null,
                "index": null,
                "barcode": null,
                "model": "诺清洁净纸10片/盒",
                "lenssphere": 0,
                "lenscylinder": 0,
                "design": null,
                "helpCode": null,
                "brand": null,
                "collectionID": null,
                "color": null,
                "description": null,
                "rx": 0,
                "bdCode": null,
                "colorcode": null,
                "country": null,
                "createTime": "1428913025483",
                "creator": null,
                "controlUnit": null,
                "mquality": null,
                "dbl": null,
                "rim": null,
                "productType": 5,
                "isLot": null,
                "id": "6wUAAADfIzFECefw",
                "Id": null,
                "CreateTime": "1429091731",
                "Creator": null,
                "LastUpdateTime": "1429091731",
                "LastUpdateUser": null,
                "Number": null
            },
            "amount": 15,
            "barcode": null,
            "name": "诺清洁净纸10片/盒",
            "batchNumber": null,
            "cargo": null,
            "discount": null,
            "discountRate": null,
            "discribe": null,
            "expireDate": null,
            "groupNumber": null,
            "invCode": "6wUAAADfIzFECefw",
            "invMemo": null,
            "isDeduct": null,
            "mjAllAmount": null,
            "mjAmount": null,
            "mjNumber": null,
            "noteAmount": null,
            "noteNumber": null,
            "noteSpendAmount": null,
            "num": 1,
            "point": null,
            "pointRate": null,
            "price": 15,
            "promot": null,
            "promotNumber": null,
            "promotPrice": null,
            "promSeq": null,
            "retailAmount": null,
            "retailPrice": 15,
            "store": null,
            "gift": null,
            "lot": null,
            "parentId": null,
            "Id": null,
            "CreateTime": "1429091731",
            "Creator": null,
            "LastUpdateTime": "1429091731",
            "LastUpdateUser": null,
            "Number": null
        },
        {
            "id": null,
            "material": {
                "number": "M-201406-0006",
                "priceRange": 600,
                "baseUnit": null,
                "type": "仪器设备",
                "name": "中心仪",
                "typeInclude": null,
                "index": null,
                "barcode": null,
                "model": "中心仪/磨得美/ST-6",
                "lenssphere": 0,
                "lenscylinder": 0,
                "design": null,
                "helpCode": null,
                "brand": null,
                "collectionID": null,
                "color": null,
                "description": null,
                "rx": 0,
                "bdCode": null,
                "colorcode": null,
                "country": null,
                "createTime": "1428913025483",
                "creator": null,
                "controlUnit": null,
                "mquality": null,
                "dbl": null,
                "rim": null,
                "productType": 9,
                "isLot": null,
                "id": "6wUAAADlRktECefw",
                "Id": null,
                "CreateTime": "1429091731",
                "Creator": null,
                "LastUpdateTime": "1429091731",
                "LastUpdateUser": null,
                "Number": null
            },
            "amount": 600,
            "barcode": null,
            "name": "中心仪",
            "batchNumber": null,
            "cargo": null,
            "discount": null,
            "discountRate": null,
            "discribe": null,
            "expireDate": null,
            "groupNumber": null,
            "invCode": "6wUAAADlRktECefw",
            "invMemo": null,
            "isDeduct": null,
            "mjAllAmount": null,
            "mjAmount": null,
            "mjNumber": null,
            "noteAmount": null,
            "noteNumber": null,
            "noteSpendAmount": null,
            "num": 1,
            "point": null,
            "pointRate": null,
            "price": 600,
            "promot": null,
            "promotNumber": null,
            "promotPrice": null,
            "promSeq": null,
            "retailAmount": null,
            "retailPrice": 600,
            "store": null,
            "gift": null,
            "lot": null,
            "parentId": null,
            "Id": null,
            "CreateTime": "1429091731",
            "Creator": null,
            "LastUpdateTime": "1429091731",
            "LastUpdateUser": null,
            "Number": null
        },
        {
            "id": null,
            "material": {
                "number": "M-201406-0005",
                "priceRange": 8,
                "baseUnit": null,
                "type": "工具耗材",
                "name": "试镜片",
                "typeInclude": null,
                "index": null,
                "barcode": null,
                "model": "试镜片/长信/塑料圈",
                "lenssphere": 0,
                "lenscylinder": 0,
                "design": null,
                "helpCode": null,
                "brand": null,
                "collectionID": null,
                "color": null,
                "description": null,
                "rx": 0,
                "bdCode": null,
                "colorcode": null,
                "country": null,
                "createTime": "1428913025483",
                "creator": null,
                "controlUnit": null,
                "mquality": null,
                "dbl": null,
                "rim": null,
                "productType": 10,
                "isLot": null,
                "id": "6wUAAADbiY5ECefw",
                "Id": null,
                "CreateTime": "1429091731",
                "Creator": null,
                "LastUpdateTime": "1429091731",
                "LastUpdateUser": null,
                "Number": null
            },
            "amount": 8,
            "barcode": null,
            "name": "试镜片",
            "batchNumber": null,
            "cargo": null,
            "discount": null,
            "discountRate": null,
            "discribe": null,
            "expireDate": null,
            "groupNumber": null,
            "invCode": "6wUAAADbiY5ECefw",
            "invMemo": null,
            "isDeduct": null,
            "mjAllAmount": null,
            "mjAmount": null,
            "mjNumber": null,
            "noteAmount": null,
            "noteNumber": null,
            "noteSpendAmount": null,
            "num": 1,
            "point": null,
            "pointRate": null,
            "price": 8,
            "promot": null,
            "promotNumber": null,
            "promotPrice": null,
            "promSeq": null,
            "retailAmount": null,
            "retailPrice": 8,
            "store": null,
            "gift": null,
            "lot": null,
            "parentId": null,
            "Id": null,
            "CreateTime": "1429091731",
            "Creator": null,
            "LastUpdateTime": "1429091731",
            "LastUpdateUser": null,
            "Number": null
        }
    ],
    "entry2": [
        {
            "id": null,
            "payMemo": null,
            "payment": "商场券",
            "payMoney": 122,
            "seq": 1,
            "payType": 0,
            "bizDate": null,
            "parentId": null,
            "Id": null,
            "CreateTime": "1429091750",
            "Creator": null,
            "LastUpdateTime": "1429091750",
            "LastUpdateUser": null,
            "Number": null
        },
        {
            "id": null,
            "payMemo": null,
            "payment": "便利通",
            "payMoney": 501,
            "seq": 2,
            "payType": 0,
            "bizDate": null,
            "parentId": null,
            "Id": null,
            "CreateTime": "1429091756",
            "Creator": null,
            "LastUpdateTime": "1429091756",
            "LastUpdateUser": null,
            "Number": null
        }
    ],
    "rxOptomertry": {
        "a_l": null,
        "a_r": null,
        "add_l": null,
        "add_r": null,
        "c_l": null,
        "c_r": null,
        "cornealRadianHL": null,
        "cornealRadianHR": null,
        "cornealRadianVL": null,
        "cornealRadianVR": null,
        "cosrequest_l": null,
        "cosrequest_r": null,
        "diameter_l": null,
        "diameter_r": null,
        "direction1_l": null,
        "direction1_r": null,
        "direction2_l": null,
        "direction2_r": null,
        "edgethickness_l": null,
        "edgethickness_r": null,
        "movedirection_l": null,
        "movedirection_r": null,
        "movelight_l": null,
        "movelight_r": null,
        "npd_l": null,
        "npd_r": null,
        "pdh_l": null,
        "pdh_r": null,
        "prism1_l": null,
        "prism1_r": null,
        "prism2_l": null,
        "prism2_r": null,
        "pd": null,
        "rpd": null,
        "s_l": null,
        "s_r": null,
        "circlehigh": null,
        "circlethickness": null,
        "frameshigh": null,
        "framestype": null,
        "horizontalwidth": null,
        "medge": null,
        "nosewidth": null,
        "bill": null,
        "id": null,
        "rim": null,
        "frameName": null,
        "style": null,
        "mquality": null,
        "eyewiredistance": null,
        "inclineAngle": null,
        "steradian": null,
        "readDistance": null,
        "personalLogo": null,
        "beautyThin_l": null,
        "beautyThin_r": null,
        "assemble": null,
        "Id": null,
        "CreateTime": "1429091715",
        "Creator": null,
        "LastUpdateTime": "1429091715",
        "LastUpdateUser": null,
        "Number": null
    },
    "Id": null,
    "CreateTime": "1429091715",
    "Creator": "UYJXP87xT0S3I7yio5E1VxO33n8=",
    "LastUpdateTime": "1429091715",
    "LastUpdateUser": null,
    "Number": null
}</textarea>
						
				</div>
				<div class="panel-heading">
					<button id="btnSave" type="button" class="btn btn-primary">确定</button>
				</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
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
			$("#btnSave").click(function() {
				var billjson = $("#txtjson").val();
				//alert(billjson);
				
				$.post("${ctx}/bill/retail/add111", {
					billjson : billjson
				}, function(data, status) {
					var dispMsg = "";
					if (true == data.isSucess) {
						dispMsg = "新增成功。";
					} else {
						dispMsg = "新增失败，返回消息：" + data.message;
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