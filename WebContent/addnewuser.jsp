<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    <%@page import="java.io.*"  import="java.sql.*,java.util.*,java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String password =request.getParameter("s_pass1");
String name= request.getParameter("s_nm");
String email=request.getParameter("s_email");
String status = request.getParameter("s_num"); 
String mobile_no = request.getParameter("ph_num"); 
String address=request.getParameter("ad_num"); 


Class.forName("com.mysql.jdbc.Driver");
Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/FinalYearProject","root","root");
Statement st = co.createStatement();

              
String command = "INSERT INTO USER_INFO (EMAIL,NAME,mobile_no,address,PASSWORD,STATUS) VALUES ('"+email+"','"+name+"','"+mobile_no+"','"+address+"','"+password+"','"+status+"')";
st.executeUpdate(command);
co.close();
st.close();
%><script> window.alert("New User Added");
window.location="admin2.jsp"</script> 
<%
			 
			
	    
	    
%>

</body>
</html>