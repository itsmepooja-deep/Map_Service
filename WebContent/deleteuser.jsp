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
String u =request.getParameter("u");


Class.forName("com.mysql.jdbc.Driver");
Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/FinalYearProject","root","root");
Statement st = co.createStatement();


	Statement st1 = co.createStatement();          
	String command = "DELETE FROM  USER_INFO where email= '"+u+"' " ;
	st1.executeUpdate(command);
	%><script> window.alert("User Deleted ");
window.location="admin2.jsp"</script>
	</body>
</html>