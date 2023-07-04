<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html>

<head>
	<meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Simple House Template</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400" rel="stylesheet" />    
	<link href="css/templatemo-style.css" rel="stylesheet" />
</head>
<!--

Simple House

https://templatemo.com/tm-539-simple-house

-->
<body> 

	<div class="container">
	<!-- Top box -->
		<!-- Logo & Site Name -->
		<div class="placeholder">
			<div class="parallax-window" data-parallax="scroll" data-image-src="img/bGarage.webp">
				<div class="tm-header">
					<div class="row tm-header-inner">
						<div class="col-md-6 col-12">
							<img src="img/simple-house-logo.png" alt="Logo" class="tm-site-logo" /> 
							<div class="tm-site-text-box">
								<h1 class="tm-site-title">Marvel Autos</h1>
								<h6 class="tm-site-description">Brand New Online Bike Rental Website</h6>	
							</div>
						</div>
						<nav class="col-md-6 col-12 tm-nav">
							<ul class="tm-nav-ul">
								<li class="tm-nav-li"><a href="index.html" class="tm-nav-link active">Home</a></li>
<!-- 								<li class="tm-nav-li"><a href="about.html" class="tm-nav-link">About</a></li>
 -->								<li class="tm-nav-li"><a href="userLogin.html" class="tm-nav-link">Sign In</a></li>
								<li class="tm-nav-li"><a href="userRegister.html" class="tm-nav-link">Sign Up</a></li>

								<!-- <li class="tm-nav-li"><a href="contact.html" class="tm-nav-link">Contact</a></li> -->
							</ul>
						</nav>	
					</div>
				</div>
			</div>
		</div>

		<main>
			<header class="row tm-welcome-section">
				<h2 class="col-12 text-center tm-section-title">Welcome To Marvel Autos</h2>
				<p class="col-12 text-center">When you ride a bike and you get your heart racing in that close proximity to the world, you feel a part of it, you feel a part of your environment. It's intoxicating." - David Byrne</p>
			</header>
			<div class="tm-section tm-container-inner">
				<div class="row">
					<div class="col-md-6">
						<figure class="tm-description-figure">
							<img src="img/H2.webp" alt="Image" class="img-fluid" />
						</figure>
					</div>
					<div class="col-md-6">
						<div class="tm-description-box"> 
							<h4 class="tm-gallery-title">Marvel Autos Presents</h4>
							<p class="tm-mb-45">Step into our bike rental garage, where a world of pedal-powered exploration awaits. With a diverse fleet of high-quality bicycles, we offer the perfect ride for every adventure seeker. Whether you're craving an exhilarating mountain trail or a leisurely cruise along scenic paths, our garage is your gateway to unforgettable cycling experiences. Choose your wheels, embrace the freedom of the open road, and embark on a two-wheeled journey like no other.</p>
							<a href="userLogin.jsp" class="tm-btn tm-btn-default tm-right">Read More</a>
						</div>
					</div>
				</div>
			</div>
		</main>
		<footer class="tm-footer text-center">
			<p>Copyright &copy; 2020 Simple House 
            
            | Design: <a rel="nofollow" href="https://templatemo.com">TemplateMo</a></p>
		</footer>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/parallax.min.js"></script>
	<script>
		$(document).ready(function(){
			// Handle click on paging links
			$('.tm-paging-link').click(function(e){
				e.preventDefault();
				
				var page = $(this).text().toLowerCase();
				$('.tm-gallery-page').addClass('hidden');
				$('#tm-gallery-page-' + page).removeClass('hidden');
				$('.tm-paging-link').removeClass('active');
								$('.tm-paging-link').removeClass('hidden');

				$(this).addClass("active");
			});
		});
		
	</script>
</body>
</html>