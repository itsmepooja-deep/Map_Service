<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<h1>
	<font size="30"><center>List of Plumbers</center></font>
</h1>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="">
	<%


Class.forName("com.mysql.jdbc.Driver");
Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/FinalYearProject","root","root");
Statement st=co.createStatement();
ResultSet rs=st.executeQuery("select * from ServiceProviderDetail where speciality='Plumber'");%><br>
	<br>
	<br>
	
	<style>
#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 90%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 7px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #4CAF50;
	color: white;
}
</style>
	<center>
		<table id="customers" border="1" cellspacing="0" border color="green">
			<tr>
				<th><font size="5">Name</font></th>
				<th><font size="5">Experience</font></th>
				<th><font size="5">Email</font></th>
				<th><font size="5">Phone no</font></th>
				<th><font size="5">Rating</font></th>
				<th><font size="5">Book</font></th>
			</tr>
			<%
while(rs.next()) {
	%>

			<tr>
				<td cellspacing="4"><font size="5" color="blue"><%=rs.getString("Name")%></font></td>
				<td><font size="5" color="blue"><%=rs.getString("Experience")%></font></td>
				<td cellspacing="4"><font size="5" color="blue"><%=rs.getString("Email")%></font></td>
				<td cellspacing="4"><font size="5" color="blue"><%=rs.getString("Mobile")%></font></td>
				<td cellspacing="4"><font size="5" color="blue"><%=rs.getString("Rating")%></font></td>
				<td cellspacing="4"><font size="5" color="blue"><%if(session.getAttribute("l")!=null){ %><a
						href="pay.jsp">Book</a></font></td><%}
				else{%><a
						href="index.html" onClick='alert("Login first")'/>Book</a></font></td><%} %>
			</tr>

			<% session.setAttribute("servn",rs.getString("Name"));
			session.setAttribute("spec",rs.getString("speciality"));
}

%>
		</table>
	</center>
</body>
</html>