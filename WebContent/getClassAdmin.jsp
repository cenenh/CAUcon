<%@page import="com.pl.util.ResultStatus"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.pl.classes.dao.classDAO"%>
<%@ page import="com.pl.classes.vo.classVO"%>
<%@ page import="com.pl.user.vo.userVO"%>
<%@ page import="com.pl.util.JDBCUtil" %>
<%@ page import="java.net.*" %>

<%
	String classnum = null;
	String time = null;
	String mon = null;
	String tue = null;
	String wed = null;
	String thr = null;
	String fri = null;
	String selectedClass = null; //which is selected
	String selectedDay = null;
	time = request.getParameter("time");
	
	if(request.getParameter("classnum") != null )
	{
		classnum=request.getParameter("classnum");
	}
	if( request.getParameter("mon") != null){
		mon = request.getParameter("mon");
		selectedClass = mon;
		selectedDay = ResultStatus.mon;
	}
	if( request.getParameter("tue") != null){
		tue = request.getParameter("tue");
		selectedClass = tue;
		selectedDay = ResultStatus.tue;
	}
	if( request.getParameter("wed") != null){
		wed = request.getParameter("wed");
		selectedClass = wed;
		selectedDay=ResultStatus.wed;
	}
	if( request.getParameter("thr") != null){
		thr = request.getParameter("thr");
		selectedClass = thr;
		selectedDay=ResultStatus.thr;
	}
	if( request.getParameter("fri") != null){
		fri = request.getParameter("fri");
		selectedClass = fri;
		selectedDay=ResultStatus.fri;
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Get Class<%=classnum %> Administrator </title>
</head>

<body>
<center>
	<b>Administrator Page</b><br><br>
		<form action="updateClass_proc.jsp?classnum=<%=classnum%>&time=<%=time%>&selectedClass=<%=selectedClass%>&selectedDay=<%=selectedDay%>" method="post">
			<table border='1' cellpadding="0" cellspacing="0"
				style="table-layout: fixed" width="500">
				<tr height="10">
					<td bgcolor="skyblue"><center>
							<b>ClassRoom Number</b>
						</center></td>
					<td align="left"><%=classnum%></td>
				</tr>
				<tr height="10">
					<td bgcolor="skyblue"><center>
							<b>The Day</b>
						</center></td>
					<td><%=selectedDay%></td>
				</tr>
				<tr height="10">
					<td bgcolor="skyblue"><center>
							<b>Time</b>
						</center></td>
					<td><%=time%></td>
				</tr>
				<tr>
					<td bgcolor="skyblue"><center>
							<b>Class Name</b>
						</center></td>
					<td><input type="text" name="newClassName" style="width: 98%;"
						value="<%=selectedClass%>"></td>
				</tr>

			</table>
			<br>
			<table cellpadding="0" cellspacing="0" style="table-layout: fixed"
				width="500">
				<tr>
					<td align="right">
						<!--  <form
					action="updateClass_proc.jsp?classnum=<%=classnum%>&time=<%=time%>&selectedClass=<%=selectedClass%>&selectedDay=<%=selectedDay%>"
					method="post">--> <input type="submit" name="modiButton"
						value="Add/Modify"> <!-- </form> -->
					</td>
		</form>
					<form
						action="deleteClass_proc.jsp?classnum=<%=classnum%>&time=<%=time%>&selectedClass=<%=selectedClass%>&selectedDay=<%=selectedDay%>"
						method="post">
						<td>
							<!-- delete func use another form --> <input type="submit" name="delButton" value="Delete">
						</td>
					</form>
					
				</tr>
			</table>
	</center>
</body>

</html>