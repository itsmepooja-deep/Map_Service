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
String p1=request.getParameter("pass");
String  p2=request.getParameter("pass1");
System.out.print(session.getAttribute("mail")+""+p1+""+p2);

	 String name=request.getParameter("a");
	 String email=request.getParameter("e");
	 String mob=request.getParameter("m");
	 String add=request.getParameter("ad");
	 String pswd=request.getParameter("p");
	 
	 //int status=0;
	 
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/FinalYearProject","root","root");
	 Statement st=co.createStatement();
	 st.executeUpdate("update User_Info set password='"+p1+"' where email='"+session.getAttribute("mail")+"'"); 
	
		 
	
	 
 

 
 %>
	<script type="text/javascript">
	alert('password updated ');
	window.location = "index.html";
	</script>


</body>
</html>