<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head><br>
<h1>Your Cart</h1>
<style>h1 { color: #CEF0D4; font-family: 'Rouge Script', cursive; font-size: 100px; font-weight: normal; line-height: 48px; margin: 0 0 50px; text-align: center; text-shadow: 1px 1px 2px #082b34; }</style>

<br><style>

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
<body>
<div class="products-container">
<div class="product-header">
 <h5 class="s">SERVICE DETAILS</h5>
 <h5 class="p">PRICE</h5>
 <h5 class="e">TOTAL</h5>
 </div>
<div class="products"></div>

</div>


</p><button style = "position:relative; left:740px;
			border-radius: 3px;
  background-color:	#FF0000;
  color: black;
  padding: 10px 22px;
  font-size: 13px;
  cursor: pointer
color:white; 
			color:white" onclick="remove()"><span><ion-icon name="trash-outline"></span> Remove Items</button></ion-icon></p>
		<script src="https://unpkg.com/ionicons@5.1.2/dist/ionicons.js"></script>
 <a href="pay.jsp"><button  style = "position:relative; left:950px; top:2px;  border: 2px solid black;
  border-radius: 5px;
  background-color:#FF8C00;
  color: black;
  padding: 10px 22px;
  font-size: 16px;
  cursor: pointer;  ">Place Order</button></a>
<style>
t1.hover {
  background: #green;
  
  

}</style>


<script defer src="js/cartfun.js">

</script>

</body>
</html>