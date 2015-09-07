<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String cookieId = "";
	String idSave = "";
	
	Cookie [ ] cookies = request.getCookies();
	if (cookies != null){
		for( int k = 0; k<cookies.length; k++  ){
			if ( "id".equals( cookies[k].getName() ) ){
				cookieId = cookies[k].getValue();
				idSave = "checked";
				break;
			}
		}
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Log-In</title>
</head>
<body>
<center>
<h1>CAUcon Manager Page</h1>
<hr>
<form action="login_proc.jsp" method="post">
	<table border="1" cellpadding="0" cellspacing="0">
	<tr><td>ID</td>
	    <td><input type="text" name="id" value ="<%=cookieId%>"/></td>
	</tr>
	<tr>
		<td> Password</td>
		<td><input type="password" name="password"/></td>
	</tr>
	<tr>
		<td> Save ID</td>
		<td><input type="checkbox" <%=idSave%> name="idSave" value="Y"/></td>
	</tr>
	<tr><td colspan="2" align="center"><input type="submit" value="Login"/></td></tr>
	<tr><td colspan="2" align="center"><input type="button" value="Add Administrator" onClick="location.href='addUser.jsp';"/></td></tr>
	</table>
</form>

<hr>
</center>
</body>
</html>