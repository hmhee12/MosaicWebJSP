<%@page import="java.util.List"%>
<%@page import="com.hybrid.domain.Dept"%>
<%@page import="com.hybrid.mapper.DeptMapper"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dept.jsp</title>
</head>
<body>
<h1>Dept 테스트</h1>
<c:if test="${empty LOGIN }">
<%-- <c:if test="${LOGIN eq null }"> --%>
<%-- <c:if test="${sessoinScope.LOGIN eq null }">  셋다 같은 거 --%>
	<c:redirect url="/session/loginForm.jsp"/>
</c:if>

<%
// 	String login =(String)session.getAttribute("LOGIN");
// 	if(login == null) {
// 		response.sendRedirect("/session/loginForm.jsp");
// 		return;
// 	}
%>

<%
	ApplicationContext ctx = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
	DeptMapper mapper = ctx.getBean(DeptMapper.class); 
	mapper.delete(65);
	
	mapper.insert(new Dept(65,"xxx","yyy"));
	List<Dept> depts= mapper.selectAll();
	for(Dept dept : depts) {
		System.out.println(dept);
		out.println(dept + "<br>");
	}
	out.println("<hr>");
	System.out.println("--------------------------------------------");
	mapper.update(new Dept(65,"xxx1","yyy2"));
	depts= mapper.selectAll();
	for(Dept dept : depts) {
		System.out.println(dept);
		out.println(dept + "<br>");
	}
	System.out.println("--------------------------------------------");

	
%>

<a href="/session/logout.jsp">로그아웃</a>

</body>
</html>