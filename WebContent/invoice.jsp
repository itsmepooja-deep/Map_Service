<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Invoice</title>
<head>
<!-- <script>   
function solve() 
         { 
             //let x = document.getElementById("meter_r").value 
			 var z =  document.getElementById("elec").value
			 var a =  document.getElementById("water").value
			 var b =  document.getElementById("meter_r").value
			 var x =  document.getElementById("maintenance").value
			 var result = parseInt(z) + parseInt(x)+parseInt(a) + parseInt(b);
             document.getElementById("amount").value = result
         } 
            </script> -->
</head>
<body><script src="https://unpkg.com/ionicons@5.1.2/dist/ionicons.js"></script>
<%int i=0;

if(session.getAttribute("i")!=null){

System.out.print(i);

%>
<script>



</script>
<table width ="60%" align = "center" >
<tr><td ><center><h1><b>MAPService </b></h1>
One Platform Many Solutions<br>
Contact us : <b> 8130617396 </b>  &nbsp;&nbsp; Email : <b>enquiry@mapservice.com</b> <br>
<br></center></td></tr>

<tr>
<td><table width ="150%">
<tr >
<td> To, </td>

<td > Invoice Date. : </td>
</tr>
<tr>
<%
String name=(String)session.getAttribute("name");
String ad=(String)session.getAttribute("add");
String email=(String)session.getAttribute("email");
Class.forName("com.mysql.jdbc.Driver");
Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/FinalYearProject","root","root");
Statement st = co.createStatement();
st.executeUpdate("insert into order_history values('"+email+"','Salon')");
%>
<td><%=name %></td>

<td> <p id="demo"></p></td>
</tr>
<tr>
<td> <%=ad %> </td>
</tr>
<tr>
<td> <%= email%></td>
</tr>
</table>
<br>
<table  width = "105%" border ="1px">
<tr>



<style>

.products-container
{
max-width:650px;
justify-content:space-around;
margin:0 auto;
margin-top:50px

}
.product-header
{
width:100%;
max-width:650px;
display:flex;
justify-content:flex-start;
border-bottom:4px solid lightgrey;
margin:0 auto;
}

.s
{
width:53%;
}
.p
{
width:32%;
display:flex;
align-items:center;
}
.e
{
width:10%;
display:flex;
align-items:center;
}

.product {
width:45%;
	display:flex;
	justify-content:space-around;
	padding:10px 0;
	border-bottom:1px solid lightgrey;
}

</style>
<script src="https://unpkg.com/ionicons@5.1.2/dist/ionicons.js"></script>

<div class="products-container">
<div class="product-header">
 <h5 class="s">SERVICE DETAILS</h5>
 <h5 class="p">PRICE</h5>
 <h5 class="e">TOTAL</h5>
 </div>
<div class="products"></div>

</div>




 </tr>


</table>
<script>
let pc=document.querySelector(".products-container");
var d1=new Date();
document.getElementById("demo").innerHTML = d1;

</script>

<br><br>
<b>Terms and Conditions </B> <br>
This is computer generated invoice no signature required. <br><br>
<center><b>MAPService </b><Br>
One Platform Many Solutions<br>
Contact us : <b>8700779561 </b>  &nbsp;&nbsp; Email : <b>enquiry@mapservice.com</b> <br>
 </center><form action="pdfmail.jsp"><button align="right"><span><ion-icon name="mail-outline"></ion-icon></span>Mail</button></form></tr>
 </td>
</table>

<script defer src="js/cartfun.js"></script>
<%} 
else
{%>



<%
String name=(String)session.getAttribute("name");
String ad=(String)session.getAttribute("add");
String email=(String)session.getAttribute("email");
String n=(String)session.getAttribute("servn");
String s=(String)session.getAttribute("spec");
Class.forName("com.mysql.jdbc.Driver");
Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/FinalYearProject","root","root");
Statement st = co.createStatement();
st.executeUpdate("insert into order_history values('"+email+"','"+s+"')");
%>

<table width ="60%" align = "center" >
<tr><td ><center><h1><b>MAPService </b></h1>
One Platform Many Solutions<br>
Contact us : <b> 8130617396 </b>  &nbsp;&nbsp; Email : <b>enquiry@mapservice.com</b> <br>
<br></center></td></tr>

<tr>
<td><table width ="150%"> 
<tr >
<td> To, </td>

<td > Invoice Date. : </td>
</tr>
<tr >
<td><%=name %></td>

<td> <p id="demo"></p></td>
</tr>
<tr>
<td> <%=ad %> </td>
</tr>
<tr>
<td> <%= email%> </td>
</tr>
</table>
<br>
<table  width = "105%" border ="1px">
<tr>
<th> No. </th>
<th> Name </th>
<th> Service</th>
</tr>
<tr>
<td> 1. </td>
<td> <%=n %> <br>  </td>
<td align = "center"> <%=s %> </td>
</tr>



</table>
<script>
let pc=document.querySelector(".products-container");
var d1=new Date();
document.getElementById("demo").innerHTML = d1;

</script>
<br><br>
<b>Terms and Conditions </B> <br>
This is computer generated invoice no signature required. <br><br>
<center><b>MAPService </b><Br>
One Platform Many Solutions<br>
Contact us : <b>8700779561 </b>  &nbsp;&nbsp; Email : <b>enquiry@mapservice.com</b> <br>
 </center></center><form action="pdfmail.jsp"><button align="right"><span><ion-icon name="mail-outline"></ion-icon></span>Mail</button></form></tr>
 </td>
</table>




<% 
}%>


</body>
<script> JavaScript:window.print();

</script>
</html>