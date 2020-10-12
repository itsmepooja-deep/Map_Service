<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.io.*" import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%  

String cvv =(String)session.getAttribute("c");
String exp_y=(String)session.getAttribute("y");
String exp_m=(String)session.getAttribute("m");
 String c=null,m=null,y=null;
 
      
        
            	c= "123";	
            	m= "12";	
            	y= "20";	
            		
            		if(c.equalsIgnoreCase(cvv)&&y.equals(exp_y)&&m.equals(exp_m))
            		{  
        %>

	<br>
	<br>
	<br>

	<div>
		<center>
			<img src="https://www.legalraasta.com/wp-content/uploads/2017/06/legalraasta.gif" height="200px" width="250px"/>
			<h3>Redirecting after payment !!</h3>
		</center>
		<center>
			<br>


			<div id="dvCountDown" style="display: none">
				You will be redirected after <span id="lblCount"></span>&nbsp;seconds.
			</div>
			<script type="text/javascript">

alert('Congratulation, Payment Confirmed Successfully ');
(function () {
    var seconds = 5;
    var dvCountDown = document.getElementById("dvCountDown");
    var lblCount = document.getElementById("lblCount");
    dvCountDown.style.display = "block";
    lblCount.innerHTML = seconds;
    setInterval(function () {
        seconds--;
        lblCount.innerHTML = seconds;
        if (seconds == 0) {
            dvCountDown.style.display = "none";
            window.location = "invoice.jsp";
        }
    }, 1000);
})(); 

</script>
			<center>
				<br> <br> <br> <br> <br> <br>
	</div>



	<%
       
            		}
            		
            		else
            		{
            			%>
	<br>
	<br>
	<br>

	<div>
		<center>
			<img src="https://cdn.dribbble.com/users/1000837/screenshots/3857924/loader_failed_01.gif" height="200px" width="250px"/>
			<h3>Redirecting !!</h3>
		</center>
		<center>
			<br>


			<div id="dvCountDown" style="display: none">
				You will be redirected after <span id="lblCount"></span>&nbsp;seconds.
			</div>
			<script type="text/javascript">

            		alert('Sorry, Payment Failed ');
            		(function () {
            		    var seconds = 5;
            		    var dvCountDown = document.getElementById("dvCountDown");
            		    var lblCount = document.getElementById("lblCount");
            		    dvCountDown.style.display = "block";
            		    lblCount.innerHTML = seconds;
            		    setInterval(function () {
            		        seconds--;
            		        lblCount.innerHTML = seconds;
            		        if (seconds == 0) {
            		            dvCountDown.style.display = "none";
            		            window.location="pay.jsp";
            		        }
            		    }, 1000);
            		})(); 

            		</script>
			<center>
				<br> <br> <br> <br> <br> <br>
	</div>
	<%
            		}
            		
            
         
        
         
        %>



</body>
</html>