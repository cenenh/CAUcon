<%@page import="com.pl.util.ResultStatus"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.net.*" %>
<%@ page import="com.pl.classes.dao.classDAO"%>
<%@ page import="com.pl.classes.vo.classVO"%>
<%@ page import="com.pl.user.vo.userVO"%>
<%@ page import="com.pl.util.JDBCUtil" %>

<%
	userVO sessionUser = (userVO) session.getAttribute("USER");
	ResultSet rs = null;
	String selectedDay = null;
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
<title>Classroom<%=classnum%> info</title>
</head>
<body>
<center>
<b>Administrator Page</b><br><br>
<b><a href="viewClassList.jsp" style="text-decoration: none">return ClassList();</a></b><br><br>

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
		for ( classVO vo : classList )
		{		
	%>
	
		<tr>
			<td width="120" bgcolor="skyblue">
				<center>
					<b><%=vo.getTime()%></b>
				</center>
			</td>
			<td width="120">
				<center>
					<form
						action="getClassAdmin.jsp?classnum=<%=classnum%>&time=<%=vo.getTime()%>&mon=<%=vo.getMon()%>"
						method="post">
						<a href="javascript:;" onclick="parentNode.submit();"
							style="text-decoration: none"> 
							<%
								if( vo.getMon().equals(" ") || vo.getMon().equals(""))
								{
							%>		
									<font color="pink"><b>Add Class</b></font>
							<%		
								}
								else{
							%>
								<%=vo.getMon()%>
							<% } %>
							</a>
					</form>
				</center>
			</td>
			
			<td width="120">
				<center>
					<form
						action="getClassAdmin.jsp?classnum=<%=classnum%>&time=<%=vo.getTime()%>&tue=<%=vo.getTue()%>"
						method="post">
						<a href="javascript:;" onclick="parentNode.submit();"
							style="text-decoration: none">
							<%
								if( vo.getTue().equals(" ") || vo.getTue().equals(""))
								{
							%>		
									<font color="pink"><b>Add Class</b></font>
							<%		
								}
								else{
							%>
								<%=vo.getTue()%>
							<% } %>
							</a>
					</form>
				</center>
			</td>
			
			<td width="120">
				<center>
					<form
						action="getClassAdmin.jsp?classnum=<%=classnum%>&time=<%=vo.getTime()%>&wed=<%=vo.getWed()%>"
						method="post">
						<a href="javascript:;" onclick="parentNode.submit();" 
							style="text-decoration: none">
							<%
								if( vo.getWed().equals(" ") || vo.getWed().equals(""))
								{
							%>		
									<font color="pink"><b>Add Class</b></font>
							<%		
								}
								else{
							%>
								<%=vo.getWed()%>
							<% } %>
						</a>
					</form>
				</center>
			</td>
			
			<td width="120">
				<center>
					<form 
						action="getClassAdmin.jsp?classnum=<%=classnum%>&time=<%=vo.getTime()%>&thr=<%=vo.getThr() %>"
						method="post">
						<a href="javascript:;" onclick="parentNode.submit();"
							style="text-decoration: none">
							<%
								if( vo.getThr().equals(" ") || vo.getThr().equals("") )
								{
							%>		
									<font color="pink"><b>Add Class</b></font>
							<%		
								}
								else{
							%>
								<%=vo.getThr()%>
							<% } %>
							</a>
					</form>
				</center>
			</td>
			
			<td width="120">
				<center>
					<form
						action="getClassAdmin.jsp?classnum=<%=classnum%>&time=<%=vo.getTime()%>&fri=<%=vo.getFri()%>"
						method="post">
						<a href="javascript:;" onclick="parentNode.submit();"
							style="text-decoration: none">
							<%
								if( vo.getFri().equals(" ") || vo.getFri().equals(""))
								{
							%>		
									<font color="pink"><b>Add Class</b></font>
							<%		
								}
								else{
							%>
								<%=vo.getFri()%>
							<% } %>
							</a>
					</form>
				</center>
			</td>
		</tr>
	<%
		}
	%>
	</table>
</center>
</body>
</html>