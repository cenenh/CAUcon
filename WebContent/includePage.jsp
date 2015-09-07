<%@page import="com.pl.user.vo.userVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	userVO sessionUser = (userVO) session.getAttribute("USER");
	String name = null;
	if (sessionUser != null) {
		name = sessionUser.getName();
	}
	if (name != null) {
%>
<h3>
	Welcome <%=name%>!
</h3>
<a href="logout_proc.jsp">Log-out</a>
<!-- <a href="getUserList.jsp">회원목록</a>-->
<%
	}
%>
<br>
<br>