<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>hello.jsp</title>
</head>
<body>
${msg}~~~~~~~~~~~~~~~~<br/>
${msg}<br/>
<p>This is my message: ${message}</p>
<c:out value="${liming}"></c:out>

<%=request.getAttribute("msg") %>
<c:forEach items= "${task}" var="d">
<p>${d.name}</p>
<p>${d.number}</p>
<p>${d.mobilePhonNo}</p>
</c:forEach>
</body>
</html>