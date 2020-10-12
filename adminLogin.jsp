<html>
<head>
<body>

<%
String name=request.getParameter("email");
String p=request.getParameter("pass");

if(name.equals("mapservice@gmail.com")&&p.equals("mapservice"))
{
	%>
	<script>window.location="admin2.jsp"</script><% 
}
else
{
%>

<script>
window.alert("wrong Password");
window.location="admin3.jsp"
</script><%} %>
</body>

</head>
</html>