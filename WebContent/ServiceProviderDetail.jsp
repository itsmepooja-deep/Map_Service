<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
String name=request.getParameter("Name");
String exp=request.getParameter("Experience");
String email=request.getParameter("Email");
String mob=request.getParameter("Mobile");
String spec=request.getParameter("specs");
String zip=request.getParameter("Zip");
//int status=0;
Class.forName("com.mysql.jdbc.Driver");
Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/FinalYearProject","root","root");
Statement st=co.createStatement();
st.executeUpdate("insert into ServiceProviderDetail values('"+name+"','"+exp+"','"+email+"','"+mob+"','"+spec+"','No Rating','"+zip+"')");
%><p>
		<font soze="20">YOUR DATA HAS BEEN SAVED</font>
	</p>
	<br>
	<br>
	<br>
	<center>
		<script type="text/javascript">
alert('User Resgistered');
window.location = "index.html";
</script>
	</center>
</body>
</html>