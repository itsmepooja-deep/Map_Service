<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.*"  import="java.sql.*,java.util.*,java.sql.ResultSet"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function goBack() 
{
    window.history.back(-1);
}</script>
</head>
<body>
<form action = "addnewuser.jsp" method = "post">
<table width="70%"height ="100%" border=0 >
<tr>

<th colspan="2" style="background-color:blue; color:white" align ="left"> USER Details <span style="float:right;">(<font color="red">*</font>)Mandatory Field</span></th> 
</tr>

<td>

<label> <b>Name<font color="red">*</font> :</b> </label>
 </td>
 <td>
 <input type="text" name="s_nm" id="s_nm" Value='' placeholder =""  required >
</td>
</tr>
<tr>
<td>

<label> <b>Email<font color="red">*</font> :</b> </label>
</td>
<td>
 <input type="email" name="s_email" id="s_email" Value='' placeholder =""   required>
</td>
</tr>
<tr>
<td>

<label> <b>Phone<font color="red">*</font> :</b> </label>
 </td>
 <td>
  <input type="text" name="ph_num" id="ph_num" Value='' placeholder =""  required>
</td>
</tr>
<tr>
<td>

<label> <b>Address<font color="red">*</font> :</b> </label>
 </td>
 <td>
  <input type="texarea" name="ad_num" id="ad_num" Value='' placeholder =""  required rows="4">
</td>
</tr>
<tr>
<td>

<label> <b>Status<font color="red">*</font> :</b> </label>
</td>
<td>
 <input type="number" name="s_num" id="s_num" Value='' placeholder =""  required >
</td>
</tr>
<tr>
<td>

<label> <b>Create Password<font color="red">*</font> :</b> </label>
</td>
<td>
 <input type="password" name="s_pass1" Value=''    required>
</td>
</tr>

</table>
<input type="submit" value ="Submit"> 
</form>
<br>
<button onclick="goBack()">Back</button>


</body>
</html>
