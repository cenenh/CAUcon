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
	String newClass = null;
	String URL ="getClassListAdmin.jsp?classnum=";
	
	classnum = request.getParameter("classnum");
	time = request.getParameter("time");
	newClass = request.getParameter("newClassName");
	selectedClass = request.getParameter("selectedClass");
	//mon,tue,wed,thr,fri
	selectedDay = request.getParameter("selectedDay");
	//monday,tuesday,wednsday,thursday,friday
	
	URL = "getClassListAdmin.jsp?classnum="+classnum;
	
	classVO classvo = new classVO();
	classDAO classdao = new classDAO();
	
	if(selectedDay.equals(ResultStatus.mon)){
		selectedDay = ResultStatus.Monday;
		classvo.setMon(newClass);
	}
	if(selectedDay.equals(ResultStatus.tue)){
		selectedDay = ResultStatus.Tuesday;
		classvo.setTue(newClass);
	}
	if(selectedDay.equals(ResultStatus.wed)){
		selectedDay = ResultStatus.Wednesday;
		classvo.setWed(newClass);
	}
	if(selectedDay.equals(ResultStatus.thr)){
		selectedDay = ResultStatus.Thursday;
		classvo.setThr(newClass);
	}
	if(selectedDay.equals(ResultStatus.fri)){
		selectedDay = ResultStatus.Friday;
		classvo.setFri(newClass);
	}
	
	classvo.setTime(time);
	//classdao.deleteClass(classvo, classnum, selectedDay);
	classdao.updateClass(classvo, classnum, selectedDay);
	
	System.out.println("classnum = " + classnum);
	System.out.println("time = " + time);
	System.out.println("classname = " + selectedClass);
	System.out.println("The day = " + selectedDay);
	System.out.println("The new class = " + newClass);
	
	response.sendRedirect(URL);
	
%>
