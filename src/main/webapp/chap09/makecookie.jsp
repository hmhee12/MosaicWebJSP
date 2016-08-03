<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie.jsp</title>
</head>
<body>
<%
	
	Cookie c = new Cookie("id","hong");
	c.setPath("/chap09");
	//chap09를 호출하면 쿠키를 저장해서 계속 보내줌
	
	response.addCookie(c);
	
%>
<h1>쿠키 생성</h1>
</body>
</html>