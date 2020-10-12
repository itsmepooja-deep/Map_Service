<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

int i=0;
String o1=request.getParameter("otp");
String o2=(String)session.getAttribute("otp");
if(o1.equals(o2))
{%>
	<script type="text/javascript">

	window.location = "payment.jsp";
	</script>
	<%
}
else
{
	%>
	<script type="text/javascript">
alert('Otp not match');
window.location = "Otp.jsp";

	
</script><%
}
if(i>5)
{
	%>
 
	<script>
window.alert("Otp expired");
<% i=0;%>
window.location="pay.jsp";</script>
<%
}
else{
	i++;
}
%>
</body>
</html>