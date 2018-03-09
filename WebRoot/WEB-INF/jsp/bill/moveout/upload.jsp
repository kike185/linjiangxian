<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上传结果</title>
</head>
<body>
			<div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">用户单据 - 调拨出库单上传</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                        	调拨出库单上传结果信息
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>上传结果</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items= "${task}" var="d" varStatus="status">
											<tr 
												<c:if test=""></c:if>
												<c:choose>
													<c:when test="${status.count%2==0}">
														class="even gradeC"
													</c:when>
													<c:otherwise>
														class="odd gradeA"
													</c:otherwise>
												</c:choose>
											>
	                                            <td>${d}</td>
                                        	</tr>
										</c:forEach>
                                    </tbody>
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
        $('#dataTables-example').dataTable();
    });
    </script>
    </content>   
</body>
</html>