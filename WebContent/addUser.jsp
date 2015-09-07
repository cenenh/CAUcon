<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Add Administrator Page</title>
</head>
<body>
<center>
	<h3>Add Administrator</h3>
	<hr>
		<form action="addUser_proc.jsp" method="post">
		<table border="1" cellpadding="0" cellspacing="0">
			<tr>
				<td>ID</td><td align="left"><input type="text" name="id" size="20"/></td>
			</tr>
			<tr>
				<td>Password</td><td align="left"><input type="password" name="password" size="20"/></td>
			</tr>
			<tr>
				<td>Name</td><td align="left"><input type="text" name="name" size="20"/></td>
			</tr>
	
			<tr>
				<td colspan="2" align="center"><input type="submit" value="Add Administrator"/></td>
			</tr>
		</table>
		</form>
	<hr>
</center>
</body>
</html>