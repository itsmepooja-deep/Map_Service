<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADMIN PORTAL</title>  
<style>
* {
  box-sizing: border-box;
}

body {
  margin: 0;
}

/* Style the header */
.header {
  background-color: #f1f1f1;
  padding: 20px;
  text-align: center;
}

/* Style the top navigation bar */
.topnav {
  overflow: hidden;
  background-color: #333;
}

/* Style the topnav links */
.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Create three unequal columns that floats next to each other */
.column {
  float: left;
  padding: 10px;
}

/* Left and right column */
.column.side {
  width: 25%;
}

/* Middle column */
.column.middle {
  width: 75%;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column.side, .column.middle {
    width: 100%;
  }
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	  $("#button").click(function(){
	    $("#div1").load("admin1.jsp", function(responseTxt, statusTxt, xhr){
	    
	     
	    });
	  });
	  $("#button1").click(function(){
		    $("#div1").load("admin.jsp", function(responseTxt, statusTxt, xhr){
		    
		    });
		  });
	  $("#button2").click(function(){
		    $("#div1").load("order_history.jsp", function(responseTxt, statusTxt, xhr){
		     
		    });
		  });
	  $("#button3").click(function(){
		    $("#div1").load("addnew.jsp", function(responseTxt, statusTxt, xhr){
		     
		    });
		  });
	  $("#button4").click(function(){
		    $("#div1").load("serviceprovider.jsp", function(responseTxt, statusTxt, xhr){
		     
		    });
		  });
	});
</script>
</head>
<body>

<div class="header">
  <center><h1><b>MAPService </b></h1>
One Platform Many Solutions
</center>
</div>


<div class="row">
  <div class="column side" >
    <h2><center>Admin Pannel</center></h2>
    <table>
  <tr> <td> <img src="images/admin.png" width="150px" height="150px" align="center" style="position:relative; left:102px;"></td></tr>
    </table>
   
    <br>
    <table width="150px" cellspacing="10px" cellpadding="10px" border ="1px" align="center">
    <tr><th> <button id="button"> Home </button></th></tr>
    <tr><th> <button id="button1"> User Details </button></th></tr>
    <tr><th> <button id = "button3">Add New User</button></th></tr>
     <tr><th> <button id="button4"> Service Provider </button></th></tr> 
     <tr><th> <button id="button2"> Order History </button></th></tr> 
    </table><br>
    <script src="https://unpkg.com/ionicons@5.1.2/dist/ionicons.js"></script>
    <button style="position:relative; left:140px; background-color:yellow;" onclick="a()"><span style="color:red; " class="w3-xxlarge"><ion-icon name="log-out-outline"></ion-icon></span>Sign-out</button>
  </div>
  <script>
  function a()
  {
	  window.alert("logout successfully")
	  window.location="index.html"
  }
  
  </script>
  <div class="column middle">
    
     <div id="div1"><h1>Welcome to Admin Pannel Home Page !!</h1>
    <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <img src = "https://images-na.ssl-images-amazon.com/images/I/513W6sIJozL._SY450_.jpg" width="300px" height = "300px">
    </div>


    </div>
  	
 
</div>
  
</body>
</html>
