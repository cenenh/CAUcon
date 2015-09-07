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
	userVO sessionUser = (userVO) session.getAttribute("USER");
	ResultSet rs = null;
	String classnum = "514"; //basic
	if (request.getParameter("classnum") != null) 
	{
		classnum = request.getParameter("classnum");
	}
	classDAO classdao = new classDAO();
	classVO classvo = new classVO();
	List<classVO> classList = classdao.getBoardList(classvo, classnum);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Classroom<%=classnum %> info</title>
</head>
<body>
<center>
	<font size="7" color="blue"><b>ClassRoom <%=classnum%></b></font> 
	<table height="50" border='1' cellpadding="0" cellspacing="0" style="table-layout:fixed">
	<tr  bgcolor="orange">
			<td width="120"><center><b>Time</b></center></td>
			<td width="120"><center><b>Monday</b></center></td>
			<td width="120"><center><b>Tuesday</b></center></td>
			<td width="120"><center><b>Wednesday</b></center></td>
			<td width="120"><center><b>Thursday</b></center></td>
			<td width="120"><center><b>Friday</b></center></td>
	</tr>
	</table>
	<table height="50" border='1' cellpadding="0" cellspacing="0" style="table-layout:fixed" width="">
	<%
		for (classVO vo : classList)
		{
	%>
	
		<tr>
			<td width="120" bgcolor="skyblue"><center><b><%=vo.getTime()%></b></center></td>
			<td width="120"><center><%=vo.getMon()%></center></td>
			<td width="120"><center><%=vo.getTue()%></center></td>
			<td width="120"><center><%=vo.getWed()%></center></td>
			<td width="120"><center><%=vo.getThr()%></center></td>
			<td width="120"><center><%=vo.getFri()%></center></td>
		</tr>
	
	<%
		}
	%>
	</table>
	</center>
</body>
</html>