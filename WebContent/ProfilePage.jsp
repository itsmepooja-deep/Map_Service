<%@page import="java.sql.*"%>
<html>
<body>

	<%
String e1=null,p1=null,n=null,ad=null,p=null;
	String e=(String)session.getAttribute("email");


Class.forName("com.mysql.jdbc.Driver");
Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/FinalYearProject","root","root");
Statement st=co.createStatement();
ResultSet rs=st.executeQuery("select * from User_Info where email='"+e+"'");
while(rs.next()) {
	n=rs.getString("name");
 e1=rs.getString("email");
 p1=rs.getString("password");
 ad=rs.getString("address");
 p=rs.getString("Mobile_no");



}


System.out.print(e.length());
System.out.print(e+"chla");%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<center><h1>Profile Page</h1></center>
<br>
<div class="card">
<input type='file' />
<br><img id="myImg" src="#" alt="your image" height=250 width=200>
  <h1><%=n%></h1>
  <p class="title"><%=e1 %></p>
  <p><%=ad %></p>
  <a href="#"><i class="fa fa-dribbble"></i></a>
  <a href="#"><i class="fa fa-twitter"></i></a>
  <a href="#"><i class="fa fa-linkedin"></i></a>
  <a href="#"><i class="fa fa-facebook"></i></a>
  <p><button><%=p %></button></p>
</div>
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
}

.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}</style>
<script>
window.addEventListener('load', function() {
	  document.querySelector('input[type="file"]').addEventListener('change', function() {
	      if (this.files && this.files[0]) {
	          var img = document.querySelector('img');  // $('img')[0]
	          img.src = URL.createObjectURL(this.files[0]); // set src to blob url
	          img.onload = imageIsLoaded;
	      }
	  });
	});

	function imageIsLoaded() { 
	  alert(this.src);  // blob url
	  // update width and height ...
	}</script>
</body></html>