<%@page import="com.pl.classes.vo.classVO"%>
<%@page import="com.pl.classes.dao.classDAO"%>
<%@page import="com.pl.util.ResultStatus" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String classnum=null;
	String time = null;
	String selectedClass = null;
	String selectedDay = null;
	String URL ="getClassListAdmin.jsp?classnum=";
	
	classnum = request.getParameter("classnum");
	time = request.getParameter("time");
	selectedClass = request.getParameter("selectedClass");
	//mon,tue,wed,thr,fri
	selectedDay = request.getParameter("selectedDay");
	//monday,tuesday,wednsday,thursday,friday
	
	URL = "getClassListAdmin.jsp?classnum="+classnum;
	
	classVO classvo = new classVO();
	classDAO classdao = new classDAO();
	
	System.out.println(classnum);
	
	if(selectedDay.equals(ResultStatus.mon)) selectedDay = ResultStatus.Monday;
	if(selectedDay.equals(ResultStatus.tue)) selectedDay = ResultStatus.Tuesday;
	if(selectedDay.equals(ResultStatus.wed)) selectedDay = ResultStatus.Wednesday;
	if(selectedDay.equals(ResultStatus.thr)) selectedDay = ResultStatus.Thursday;
	if(selectedDay.equals(ResultStatus.fri)) selectedDay = ResultStatus.Friday;
	
	classvo.setTime(time);
	classdao.deleteClass(classvo, classnum, selectedDay);
	
	//System.out.println("classnum = " + classnum);
	//System.out.println("time= " + time);
	//System.out.println("classname = " + selectedClass);
	//System.out.println("The day = " + selectedDay);
	
	response.sendRedirect(URL);
	
%>
