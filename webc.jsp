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



<script language="javascript" type="text/javascript">
var q = localStorage.getItem("storageName");
var m = JSON.stringify(q);
var res = m.substring(0,m.indexOf("@")+10)
var l=res.length
if(res.indexOf(":"))
	{
	res=m.substring(res.indexOf(":")+2,l)
	}
else
	{
	res=res.substring(1,l)
	}
	
	
var name = res;

window.location.replace("loginQr.jsp?name="+name);
console.log(name);
</script>


</body>
</html>