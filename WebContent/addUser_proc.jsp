<%@page import="com.pl.user.vo.userVO"%>
<%@page import="com.pl.user.dao.userDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String id = request.getParameter("userId");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	
	userVO vo = new userVO();
	vo.setUserId(id);
	vo.setName(name);
	vo.setPassword(password);
	
	userDAO userDao = new userDAO();
	userDao.addUser(vo);
	
	response.sendRedirect("login.jsp");
	
%>