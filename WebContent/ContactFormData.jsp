<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
String name=request.getParameter("name1");
String email=request.getParameter("email1");
String com=request.getParameter("comment1");


//int status=0;
Class.forName("com.mysql.jdbc.Driver");
Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/FinalYearProject","root","root");
Statement st=co.createStatement();
st.executeUpdate("insert into ContactFormDetail values('"+name+"','"+email+"','"+com+"')");
%><p>
		<font soze="20">YOUR DATA HAS BEEN SAVED</font>
	</p>
	<br>
	<br>
	<script type="text/javascript">
alert('Message Saved');
window.location = "index.html";
</script>
</body>
</html>