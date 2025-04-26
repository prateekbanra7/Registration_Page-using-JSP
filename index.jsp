<%!Integer id;
	String name;
	Integer age;
	String address;%>
<%
id = Integer.parseInt(request.getParameter("id"));
name = request.getParameter("name");
address = request.getParameter("address");
age = Integer.parseInt(request.getParameter("age"));
%>
<jsp:useBean id="student" class="in.abc.bean.Student" scope="page">
	<jsp:setProperty property="*" name="student"  />

</jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OUTPUT</title>
</head>
<body>
	<center>
		<h1>STUDENT DETAILS</h1>
		<table border='1'>
			<tr>
				<th>ID</th>
				<td><jsp:getProperty property="id" name="student" /></td>
			</tr>
			<tr>
				<th>NAME</th>
				<td><jsp:getProperty property="name" name="student" /></td>
			</tr>
			<tr>
				<th>ADDRESS</th>
				<td><jsp:getProperty property="address" name="student" /></td>
			</tr>
			<tr>
				<th>AGE</th>
				<td><jsp:getProperty property="age" name="student" /></td>
			</tr>
		</table>
	</center>
</body>
</html>