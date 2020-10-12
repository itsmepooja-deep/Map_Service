<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="lightblue">

	<%
	int l=1;
	session.setAttribute("l",l);
String e1=null,p1=null,n=null,ad=null;
String e=request.getParameter("email");
String p=request.getParameter("password");
int s=0;


Class.forName("com.mysql.jdbc.Driver");
Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/FinalYearProject","root","root");
Statement st=co.createStatement();
ResultSet rs=st.executeQuery("select * from User_Info where email='"+e+"'");
while(rs.next()) {
 e1=rs.getString("email");
 p1=rs.getString("password");
 n=rs.getString("name");
 s=rs.getInt("status");
 ad=rs.getString("address");

}

session.setAttribute("name",n);
session.setAttribute("add",ad);
if(e1.equalsIgnoreCase(e)&&p.equals(p1))
{
	if(s==1){
		session.setAttribute("email",e); 
	%>



	<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
	<!DOCTYPE html>
<html>
<head>
<title>Fast Service a Home Service Category Bootstrap Responsive
	Website Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords"
	content="Fast Service a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"
	media="all">
<link href="css/fontawesome-all.min.css" rel="stylesheet"
	type="text/css" media="all">
<link href="css/easy-responsive-tabs.css" rel='stylesheet'
	type='text/css' />
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="all">
<link rel="stylesheet" type="text/css" href="css/style_common.css" />
<link rel="stylesheet" type="text/css" href="css/style1.css" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="//fonts.googleapis.com/css?family=Roboto:400,500,700,900"
	rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700,800"
	rel="stylesheet">
</head>
<body>
	<header> <!-- header --> <nav
		class="navbar navbar-expand-lg navbar-light"> <a
		class="navbar-brand" href="index.html">MapService</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item "><a class="nav-link" href="#">Home </a></li>
			<li class="nav-item"><a class="nav-link" href="about.html">About</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="services.html">Services</a>
			</li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> Dropdown </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="gallery.html">Gallery</a> <a
						class="dropdown-item" href="typography.html">Typography</a> <a
						class="dropdown-item" href="error.html">Error</a>
				</div></li>
			<li class="nav-item"><a class="nav-link " href="contact.html">Contact</a>
			</li>




			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> Settings </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="ProfilePage.jsp"><%=n %></a> <a
						class="dropdown-item" href="">Privacy</a> <a class="dropdown-item"
						href="index.html">Logout</a>
				</div></li>




		</ul>
	</nav> <!-- //header --> <!-- banner --> <!-- banner-slider -->
	<div class="w3l_banner_info">
		<div class="slider">
			<div class="callbacks_container">
				<ul class="rslides" id="slider3">
					<li>
						<div class="slider-img">
							<div class="slider_banner_info">
								<div class="text">
									<h3 class="word wisteria">We Are The Best Home Service For
										Making Your Home Shine</h3>
									<p>One Platform Many Services</p>
								</div>

							</div>
						</div>
					</li>
					<li>
						<div class="slider-img-2">
							<div class="slider_banner_info">
								<div class="text">
									<h3 class="word wisteria">Making your Home Shine and
										Spotless Is Our Business And Priority</h3>
									<p>Lorem Ipsum is simply dummy text of the printing and
										typesetting industry</p>
								</div>

							</div>
						</div>
					</li>
					<li>
						<div class="slider-img-3">
							<div class="slider_banner_info">
								<div class="text">
									<h3 class="word wisteria">Our Home Service Providers will
										Make You Proud in Society</h3>
									<p>Lorem Ipsum is simply dummy text of the printing and
										typesetting industry</p>
								</div>

							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //banner-slider -->
	</div>
	</header>
	<h3>
		<b><i><font size="60">Welcome <%=n %></font></i></b>
	</h3>
	<section class="bannerbottom py-lg-5 py-md-4 py-md-3 py-2">
	<div class="bannerbottom py-lg-5 py-md-4 py-md-3 py-2">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-12 w3_ban1">
					<div class="card">
						<img class="card-img-top" src="images/bb1.jpg"
							alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title">Carpenter</h5>
							<p class="card-text"></p>
							<a href="inf_carpanter.jsp" class="btn btn-primary">Explore</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-12 w3_ban1">
					<div class="card">
						<img class="card-img-top" src="images/bb2.jpg"
							alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title">Plumber</h5>
							<p class="card-text"></p>
							<a href="info_plumber.jsp" class="btn btn-primary">Explore</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-12 w3_ban1">
					<div class="card">
						<img class="card-img-top" src="images/bb3.jpg"
							alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title">Electrician</h5>
							<p class="card-text"></p>
							<a href="info_electrician.jsp" class="btn btn-primary">Explore</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-12 w3_ban">
					<div class="card">
						<img class="card-img-top" src="images/bb4.jpg"
							alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title">Welder</h5>
							<p class="card-text"></p>
							<a href="info_welder.jsp" class="btn btn-primary">Explore</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-12 w3_ban">
					<div class="card">
						<img class="card-img-top" src="images/bb5.jpg"
							alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title">Painter</h5>
							<p class="card-text"></p>
							<a href="info_painter.jsp" class="btn btn-primary">Explore</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-12 w3_ban">
					<div class="card">
						<img class="card-img-top" src="images/bb6.jpg"
							alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title">Fitter</h5>
							<p class="card-text"></p>
							<a href="indo_fitter.jsp" class="btn btn-primary">Explore</a>
						</div>
					</div>
				</div>
			<div class="col-md-4 col-sm-12 w3_ban" >
					<br>
						<div class="card">
							<img class="card-img-top" src="images/Beard Setting.jpeg"
								alt="Card image cap">
							<div class="card-body">
								<h5 class="card-title">Salon Shops</h5>
								<a href="saloon.jsp" class="btn btn-primary">Explore</a>
							</div>
						</div></div><div class="col-md-4 col-sm-12 w3_ban"><br>
					<div class="card">
					<img class="card-img-top" src="images/other.jpeg" height="235px"
								alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title1">Others</h5>
							<p class="card-text"></p>
							<a href="info_other.jsp" class="btn btn-primary">Explore</a>
						</div>
					</div></div>
			</div>
		</div>
	</div>
	</div>
	</section>
	<section class="pricinglist ">
	<div class="pricinglist ">
		<h3 class="mb-lg-5 mb-md-4 mb-sm-3 mb-2">Our Prices OverView</h3>
		<div class="container">
			<div class="w3_1">
				<div class="row">
					<div class="col-sm-6 w3_a1">
						<h4>Interior Decoration</h4>
						<p>Lorem Ipsum</p>
					</div>
					<div class="col-sm-6 w3_a2">
						<h4>Rs.600.00</h4>
					</div>
				</div>
			</div>
			<div class="w3_1">
				<div class="row">
					<div class="col-sm-6 col-xs-6 w3_a1">
						<h4>Roofing</h4>
						<p>Lorem Ipsum</p>
					</div>
					<div class="col-sm-6 col-xs-6 w3_a2">
						<h4>Rs.6000.00</h4>
					</div>
				</div>
			</div>
			<div class="w3_1">
				<div class="row">
					<div class="col-sm-6 w3_a1">
						<h4>Gardening</h4>
						<p>Lorem Ipsum</p>
					</div>
					<div class="col-sm-6 w3_a2">
						<h4>Rs.1000.00</h4>
					</div>
				</div>
			</div>
			<div class="w3_1">
				<div class="row">
					<div class="col-sm-6 w3_a1">
						<h4>Flooring</h4>
						<p>Lorem Ipsum</p>
					</div>
					<div class="col-sm-6 w3_a2">
						<h4>Rs.5000.00</h4>
					</div>
				</div>
			</div>
			<div class="w3_1">
				<div class="row">
					<div class=" col-sm-6 w3_a1">
						<h4>Exterior Decoration</h4>
						<p>Lorem Ipsum</p>
					</div>
					<div class="col-sm-6 w3_a2">
						<h4>Rs.7000.00</h4>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>

	<section class="mission py-lg-5 py-md-4 py-md-3 py-2">
	<div class="mission py-lg-5 py-md-4 py-md-3 py-2">
		<div class="row">
			<div class="col-md-3 col-sm-12 w3_ms8">
				<img src="images/bb9.jpg" alt="xt" class="img-fluid">
			</div>
			<div class="col-md-3 col-sm-12 w3_ms1">
				<h4 class="mb-lg-4 mb-md-3 mb-sm-2 mb-2">Our Mission</h4>
				<p>o deliver trusted and affordable services to the folks around
					the world, startup aim to have more than 100,000 professionals on
					its platform and serve over 100,000 customers every day by next one
					year</p>
			</div>
			<div class="col-md-6 col-sm-12 w3_ms3">
				<!-- Slideshow container -->
				<div class="slideshow-container">

					<!-- Full-width slides/quotes -->
					<div class="mySlides">
						<img src="images/test1.jpg" alt="xyt" class="img-fluid">
						<h4>Lorem Ipsum is simply dummy text of the printing and
							typesetting industry</h4>

					</div>

					<div class="mySlides">
						<img src="images/test2.jpg" alt="xyt" class="img-fluid">
						<h4>Lorem Ipsum is simply dummy text of the printing and
							typesetting industry</h4>

					</div>

					<div class="mySlides">
						<img src="images/test3.jpg" alt="xyt" class="img-fluid">
						<h4>Lorem Ipsum is simply dummy text of the printing and
							typesetting industry</h4>

					</div>

					<!-- Next/prev buttons -->
					<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a
						class="next" onclick="plusSlides(1)">&#10095;</a>
				</div>

			</div>
			<div class="col-md-3 col-sm-12 w3_ms7">
				<h4 class="mb-lg-4 mb-md-3 mb-sm-2 mb-2">Our Creative</h4>
				<p>We provide a platform to link all types of services and to
					provide the service that can exclusively suitable for every
					customers requirement</p>
			</div>
			<div class="col-md-3 col-sm-12 w3_ms">
				<div class="row inner_stat_wthree_agileits">

					<div class="col-md-6 stats_left counter_grid2">
						<i class="far fa-edit"></i>
						<p class="counter">563</p>
						<h4>Projects</h4>
					</div>
					<div class="col-md-6 stats_left counter_grid3">
						<i class="far fa-smile"></i>
						<p class="counter">1045</p>
						<h4>Happy Clients</h4>
					</div>

				</div>
			</div>


			<div class="col-md-3 col-sm-12 w3_ms6"></div>
			<div class="col-md-3 col-sm-12 w3_ms4">
				<h4 class="mb-lg-4 mb-md-3 mb-sm-2 mb-2">Our Vision</h4>
				<p>Provide all services to our customers door and save their
					time and money</p>
			</div>
		</div>
	</div>
	</section>

	<!-- Skills -->
	<section class="skills py-lg-5 py-md-4 py-md-3 py-2">
	<div class="stats wthree-sub py-lg-5 py-md-4 py-md-3 py-2" id="skills">
		<div class="container">
			<h3 class="w3l-title mb-lg-4 mb-md-3 mb-sm-2 mb-2">Our Skills</h3>
			<div class="row">
				<div class="col-sm-6 stats_grid_right">
					<div class="skillbar" data-percent="78">
						<span class="skillbar-title" style="background: #f1703a;">INTERIORS</span>
						<p class="skillbar-bar" style="background: #f88c5e;"></p>
						<span class="skill-bar-percent"></span>
					</div>
					<!-- End Skill Bar -->

					<div class="skillbar" data-percent="94">
						<span class="skillbar-title" style="background: #2980b9;">EXTRIORS</span>
						<p class="skillbar-bar" style="background: #3498db;"></p>
						<span class="skill-bar-percent"></span>
					</div>
					<!-- End Skill Bar -->

					<div class="skillbar" data-percent="76">
						<span class="skillbar-title" style="background: #a0d034;">GARDENING</span>
						<p class="skillbar-bar" style="background: #b2ec2f;"></p>
						<span class="skill-bar-percent"></span>
					</div>
					<!-- End Skill Bar -->
				</div>
				<div class="col-sm-6 stats_grid_right">
					<div class="skillbar" data-percent="54">
						<span class="skillbar-title" style="background: #f1703a;">ROOFING</span>
						<p class="skillbar-bar" style="background: #f88c5e;"></p>
						<span class="skill-bar-percent"></span>
					</div>
					<!-- End Skill Bar -->

					<div class="skillbar" data-percent="64">
						<span class="skillbar-title" style="background: #2980b9;">PARTIES</span>
						<p class="skillbar-bar" style="background: #3498db;"></p>
						<span class="skill-bar-percent"></span>
					</div>
					<!-- End Skill Bar -->

					<div class="skillbar" data-percent="84">
						<span class="skillbar-title" style="background: #a0d034;">DECORATION</span>
						<p class="skillbar-bar" style="background: #b2ec2f;"></p>
						<span class="skill-bar-percent"></span>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- /Skills -->

	<!-- Contact -->
	<section class="contact py-lg-5 py-md-4 py-md-3 py-2">
	<div class="container py-lg-5 py-md-4 py-md-3 py-2">
		<div class="w3_mg">
			<h3>MapService</h3>
			<p class=" my-lg-4 my-md-3 my-sm-2 my-2">WE PROVIDE SERVICES TO
				USER PROVIDE A PLATFORM FOR BOTH CUSTOMER AND SERVICE PROVIDER OUR
				AIM IS TO MAP DIFFERENT SERVICES AND PROVIDE THESE SERVICES TO YOUR
				DOOR</p>
			<!-- Button trigger modal -->
			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#exampleModal">For register as a service
				provider</button>

			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Fast Service</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="contact" id="contact">
								<div class="container">
									<h3 class="title clr">For providing service</h3>
									<div class=" contact-form">
										<form action="ServiceProviderDetail.jsp" method="post">
											<div class="row contact-bothside-agileinfo">
												<div class="col-md-6 col-sm-6 col-xs-6 form-right form-left">
													<input type="text" name="Name" placeholder="Name"
														required="">
												</div>
												<div class="col-md-6 col-sm-6 col-xs-6 form-right ">
													<input type="text" name="Experience"
														placeholder="Experience" required="">
												</div>
												<div class="col-md-6 col-sm-6 col-xs-6 form-right form-left">
													<input type="email" name="Email" placeholder="Email"
														required="">
												</div>
												<div class="col-md-6 col-sm-6 col-xs-6 form-right ">
													<input type="text" name="Mobile" placeholder="Phone"
														required="">
												</div>
											</div>
											<div>
												<center>
													Speciality: <select name="specs">
														<option>Plumber</option>
														<option>Electrician</option>
														<option>Welder</option>
														<option>Fitter</option>

														<option>Painter</option>
														<option>Other</option>
													</select>
												</center>
											</div>
											<div>
												<input type="submit" value="SUBMIT">
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- /Conatct -->
	<!-- Footer-->
	<section class="footer">
	<div class="container">
		<h3>MapService</h3>
		<div class="wrapper">
			<ul
				class="social-icons icon-circle icon-zoom list-unstyled list-inline">
				<li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
				<li><a href="#"><i class="fab fa-twitter"></i></a></li>
				<li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
			</ul>
		</div>
		<div class="copyright">
			<p>
				© 2018 Fast Service. All Rights Reserved | Design by <a>MapService
					Team</a>
			</p>

		</div>
	</div>
	</section>
	<!-- /Footer-->
	<!-- bootstrap-pop-up for login and register -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1"
		role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					MapService
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>






			</div>
		</div>
	</div>
	<!-- //bootstrap-pop-up for login and register-->

	<script src="js/jquery.min.v3.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<script src="js/SmoothScroll.min.js"></script>

	<!-- banner Slider -->
	<script src="js/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function () {
			// Slideshow 4
			$("#slider3").responsiveSlides({
				auto: true,
				pager: true,
				nav: false,
				speed: 500,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.events').append("<li>after event fired.</li>");
				}
			});

		});
	</script>
	<!-- //banner Slider -->


	<script src="js/easy-responsive-tabs.js"></script>
	<script>
$(document).ready(function () {
$('#horizontalTab').easyResponsiveTabs({
type: 'default', //Types: default, vertical, accordion           
width: 'auto', //auto or any width like 600px
fit: true,   // 100% fit in a container
closed: 'accordion', // Start closed if in accordion view
activate: function(event) { // Callback function if tab is switched
var $tab = $(this);
var $info = $('#tabInfo');
var $name = $('span', $info);
$name.text($tab.text());
$info.show();
}
});
$('#verticalTab').easyResponsiveTabs({
type: 'vertical',
width: 'auto',
fit: true
});
});
</script>
	<!--//tabs-->
	<!--team-->
	<script type="text/javascript">
							$(window).load(function() {
								$("#flexiselDemo1").flexisel({
									visibleItems:4,
									animationSpeed: 1000,
									autoPlay: true,
									autoPlaySpeed: 3000,    		
									pauseOnHover: true,
									enableResponsiveBreakpoints: true,
									responsiveBreakpoints: { 
										portrait: { 
											changePoint:480,
											visibleItems: 1
										}, 
										landscape: { 
											changePoint:640,
											visibleItems:2
										},
										tablet: { 
											changePoint:768,
											visibleItems: 3
										}
									}
								});
								
							});
					</script>
	<script type="text/javascript" src="js/jquery.flexisel.js"></script>

	<!--team-->
	<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
	<script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
				</script>
	<script type="text/javascript">
var words = document.getElementsByClassName('word');
var wordArray = [];
var currentWord = 0;

words[currentWord].style.opacity = 1;
for (var i = 0; i < words.length; i++) {
  splitLetters(words[i]);
}

function changeWord() {
  var cw = wordArray[currentWord];
  var nw = currentWord == words.length-1 ? wordArray[0] : wordArray[currentWord+1];
  for (var i = 0; i < cw.length; i++) {
    animateLetterOut(cw, i);
  }
  
  for (var i = 0; i < nw.length; i++) {
    nw[i].className = 'letter behind';
    nw[0].parentElement.style.opacity = 1;
    animateLetterIn(nw, i);
  }
  
  currentWord = (currentWord == wordArray.length-1) ? 0 : currentWord+1;
}

function animateLetterOut(cw, i) {
  setTimeout(function() {
        cw[i].className = 'letter out';
  }, i*80);
}

function animateLetterIn(nw, i) {
  setTimeout(function() {
        nw[i].className = 'letter in';
  }, 340+(i*80));
}

function splitLetters(word) {
  var content = word.innerHTML;
  word.innerHTML = '';
  var letters = [];
  for (var i = 0; i < content.length; i++) {
    var letter = document.createElement('span');
    letter.className = 'letter';
    letter.innerHTML = content.charAt(i);
    word.appendChild(letter);
    letters.push(letter);
  }
  
  wordArray.push(letters);
}

changeWord();
setInterval(changeWord, 4000);

</script>

	<!-- stats -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
	<script>
		$('.counter').countUp();
	</script>
	<!-- //stats -->
	<!-- skills -->
	<script src="js/skill.bars.jquery.js"></script>
	<script>
	$(document).ready(function(){
		
		$('.skillbar').skillBars({
			from: 0,
			speed: 4000, 
			interval: 100,
			decimals: 0,
		});
		
	});
</script>
	<!-- //skills -->
	<!-- sign in and signup pop up toggle script -->
	<script>
        $('.toggle').click(function () {
            // Switches the Icon
            $(this).children('i').toggleClass('fa-pencil');
            // Switches the forms  
            $('.form').animate({
                height: "toggle",
                'padding-top': 'toggle',
                'padding-bottom': 'toggle',
                opacity: "toggle"
            }, "slow");
        });
    </script>
	<!-- sign in and signup pop up toggle script -->
	<script type="text/javascript">
	var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1} 
    if (n < 1) {slideIndex = slides.length}
    for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none"; 
    }
    for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
    }
  slides[slideIndex-1].style.display = "block"; 
  dots[slideIndex-1].className += " active";
}	
	</script>
	<!-- start-smoth-scrolling -->
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
	<!-- scrolling script -->
	<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
	<script type="text/javascript">
	$(function () {
  $('[data-toggle="popover"]').popover()
})
</script>
	<!-- //scrolling script -->
	<!--//start-smoth-scrolling -->


</body>
</html>

<%
		}
		else
		{%>

			<script>window.alert("User is under verification")
			window.location="index.html"</script>
<%
		}
}
else 
	
{
%>


<br>
<br>
<br>
<script>window.alert("Wrong Password")
window.location="index.html"</script>
<%
	
}

session.setAttribute("email",e);

%>
<script>


</script>
</body>
</html>