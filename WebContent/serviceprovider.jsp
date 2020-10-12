<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.sql.*"%>
    
 <!DOCTYPE html>  
 <html>  
      <head>  
           <title>ADMIN PORTAL</title>  
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
           <style>  
           .wrapper{  
                width:50px;  
                margin:0 auto;  
           }  
           .switch{  
                width:25px;  
                height:12px;  
                background:#E5E5E5;  
                z-index:0;  
                margin:0;  
                padding:0;  
                appearance:none;  
                border:none;  
                cursor:pointer;  
                position:relative;  
                border-radius:5px;  
           }  
           .switch:before{  
                content: ' ';  
                position:absolute;  
                left:0px;  
                top:0px;  
                width:23px;  
                height:11px;  
                background:#FFFFFF;  
                z-index:1;  
                border-radius:5px;  
           }  
           .switch:after{  
                content:' ';  
                width:11px;  
                height:11px;  
                border-radius:4px;  
                z-index:2;  
                background:#FFFFFF;  
                position:absolute;  
                transition-duration:500ms;  
                top:5x; 
                left:0px;  
                box-shadow:0 1px 1px #999999;  
           }  
           .switchOn, .switchOn:before{  
                background:#4cd964; !important;  
           }  
           .switchOn:after{  
                left:13px;   
           } 
           div.scroll { 
                margin:4px, 4px; 
                padding:4px; 
                background-color: ; 
                width: 1000px; 
                height: 300px; 
                overflow-x: hidden; 
                overflow-y: auto; 
                text-align:justify; 
            }  
            #customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
           </style>  
           <script>  
           $(document).ready(function(){  
                $('.switch').click(function(){  
                     $(this).toggleClass("switchOn");
                     
                   
                });  
           });
           </script>  
      </head>  
      <body> 
      <div ><h1 style="color:green">Service Provider Details</h1></div>
      
      <%
String e1=null,p1=null; int n=0;


Class.forName("com.mysql.jdbc.Driver");
Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/FinalYearProject","root","root");
Statement st = co.createStatement();

 String command1 ="select * from SERVICEPROVIDERDETAIL" ;
 %>
 <div class="scroll">
 <table width = "300px" align="" border = "1px" id="customers">
  <tr>
  
    <th>NAME</th>
    <th>EXPERIENCE</th>
    <th>EMAIL</th>
    <th>MOBILE</th>
    <th>SPECIALITY</th>
    <th>RATING</th>
    <th>ZIPCODE</th>
  </tr><%
 ResultSet  rs = st.executeQuery(command1);
String id=null;
while(rs.next()) { 


 %>
  <tr>
  
    <td>   <%=rs.getString("NAME")%></td>
    <td><%=rs.getString("Experience")%></td>
     <td>  <%=rs.getString("EMAIL")%></td>
     <td><%=rs.getString("mobile")%></td>
      <td><%=rs.getString("speciality")%></td>
      <td><%=rs.getString("Rating")%></td>
      <td><%=rs.getString("zipcode")%></td>
     
  </tr>
 

   
      <%

} 
 

%>



		</table>
		<br>
  
		</div>     
    
       </body>  
 </html>  