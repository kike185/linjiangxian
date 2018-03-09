<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pos机列表</title>
</head>
<body>
			<div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">基础资料 - </h1>
                    <form action="http://localhost:8080/cloud/bd/pos/upload" method="get">
						<input type="submit" value="上传数据" />
					</form>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                        	Pos机列表信息
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>单号</th>
                                            <th>业务日期</th>
                                            <th>制单人</th>
                                            <th>备注</th>
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
	                                            <td>${d.number}</td>
	                                            <td>${d.bizDate}</td>
	                                            <td>${d.creator}</td>
	                                            <td class="center">${d.description}</td>
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