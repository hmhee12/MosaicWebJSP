<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestScope.jsp</title>
</head>
<body>
<% 
	request.setAttribute("xxx", "Hello EL");
%>
<!-- request map에 저장 -->
<%=request.getAttribute("xxx") %><hr>
${requestScope.xxx}
</body>
</html>