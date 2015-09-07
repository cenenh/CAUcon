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
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
<title>Classroom <%=classnum %> info</title> 
<!--JQurey Mobile 연결 -->
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.css" />
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.js"></script>

<!--css -->
<style type="text/css">/*스마트폰 세로*/
@media all and (max-width:360px){
	#device2{ position:absolute; top:-100000px}
	#device3{ position:absolute; top:-100000px}
	.thum{ width:50%;height:auto;float:left}
	/*#device2,#device3{ position:absolute; top:-100000px}*/
}
/* 스마트폰 가로 / 태블릿 세로  */
@media all and (min-width:361px) and (max-width:960px) {
	#device1{ position:absolute; top:-100000px}
	#device3{ position:absolute; top:-100000px}
	.thum{ width:25%;height:auto;float:left}
}
/* 태블릿 가로 */
@media all and (min-width:961px) and (max-width:1280px) {
	#device1{ position:absolute; top:-100000px}
	#device2{ position:absolute; top:-100000px}
	.thum{ width:12.5%;height:auto;float:left}
}
/* 웹 */
@media all and (min-width:1281px) {
}
.ui-page{background:url("bg_bd.png")}
</style>
</head>
<body>

<div data-role="page"> <!--제이쿼리 문법-->
<!--상단 타이틀 영역 설정-->
<!--앱이름-->
<div data-role="header">
<h1>Classroom <%=classnum %> info</h1>
</div> 
<center>
	<!--<table height="60" border='1' cellpadding="0" cellspacing="0" style="table-layout:fixed">
	
	</table>-->
	<table height="130" border='1' cellpadding="0" cellspacing="0" style="table-layout:fixed" width="">
	<tr bgcolor="black" style="table-layout:fixed">
			<td width="120"><center><font color="white">Time</font></center></td>
			<td width="120"><center><font color="white">Monday</font></center></td>
			<td width="120"><center><font color="white">Tuesday</font></center></td>
			<td width="120"><center><font color="white">Wednesday</font></center></td>
			<td width="120"><center><font color="white">Thursday</font></center></td>
			<td width="120"><center><font color="white">Friday</font></center></td>
	</tr>
	<%
		for (classVO vo : classList)
		{
	%>
	
		<tr>
			<td width="120" bgcolor="orange"><center><b><%=vo.getTime()%></b></center></td>
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




<!--하단 영역 설정-->
<div data-role="footer" data-position="fixed">
<h4>Copyrightⓒ2014 CAUcon</h4>
</div>
    
</div>    <!--main_page 닫아줌-->    

<!--sub_page-->
<!--sub_page에는 id를 달아줘야함.-->
<div data-role="page" id ="sub">
	<div data-role="header">
    	<a href="#" data-icon="home" data-rel="back">HOME</a>
        <h1>최은호</h1>
     </div>
		
	<div data-role="footer" data-position="fixed">
	<h4>CAUcon</h4>
	</div>
</div>


</body>
</html>