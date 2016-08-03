<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout.jsp</title>
</head>
<body>
<%
	Cookie c = new Cookie("LOGIN", "success");
	c.setPath("/cookie");
	c.setMaxAge(0);
	//쿠키 삭제 시킴 0으로 만듬
	
	response.addCookie(c);
%>
<h1>로그인 성공</h1>
<a href="loginForm.jsp">로그인</a>

<a href="dept.jsp">부서 리스트</a>
</body>
</html>