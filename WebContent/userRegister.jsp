<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html lang="en">
<%@page import="userModel.userDao" %>
<%@page import="userModel.userP" %>


   <head>
   <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Simple House Template</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400" rel="stylesheet" />    
	<link href="css/templatemo-style.css" rel="stylesheet" />
      <style>
         body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
         }

         .contact_section {
            padding: 60px 0;
            text-align: center;
         }

         .contact_main {
            background-color: #fff;
            max-width: 400px;
            margin: 0 auto;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
         }

         .request_text {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
         }

         .form-group {
            margin-bottom: 20px;
         }

         .email-bt {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 14px;
         }

         .send_btn {
            margin-top: 20px;
         }

         .send_btn input[type="submit"] {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            font-weight: bold;
            color: #fff;
            background-color: #626364;
            border: none;
            border-radius: 3px;
            cursor: pointer;
         }

         .footer_section {
            padding: 20px 0;
            text-align: center;
            background-color: #333;
            color: #fff;
         }
      </style>
   </head>
   <body>
    <div class="container">
        <!-- Top box -->
            <!-- Logo & Site Name -->
            <div class="placeholder">
                <div class="parallax-window" data-parallax="scroll" data-image-src="img/img-01.jpg">
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
                                    <li class="tm-nav-li"><a href="index.jsp" class="tm-nav-link ">Home</a></li>
<!--                                     <li class="tm-nav-li"><a href="about.html" class="tm-nav-link">About</a></li>
 -->                                    <li class="tm-nav-li"><a href="userLogin.jsp" class="tm-nav-link">Sign In</a></li>
                                    <li class="tm-nav-li"><a href="#" class="tm-nav-link active">Sign Up</a></li>
    
                                    <!-- <li class="tm-nav-li"><a href="contact.html" class="tm-nav-link">Contact</a></li> -->
                                </ul>
                            </nav>	
                        </div>
                    </div>
                </div>
            </div>
    
      <div class="contact_section layout_padding">
         <div class="container">
            <div class="contact_main">
               <h1 class="request_text">REGISTER HERE</h1>
               <form action="userRegister">
                  <div class="form-group">
                     <input type="text" class="email-bt" placeholder="Username" name="uname" required="required">
                  </div>
                  <div class="form-group">
                     <input type="text" class="email-bt" placeholder="Email" name="uemail" required="required">
                  </div>
                  <div class="form-group">
                    <select name="ugen" class="email-bt" required="required">
                       <option selected>Male</option>
                       <option>Female</option>
                       <option>Other</option>
                    </select>
                 </div>
                  <div class="form-group">
                     <input type="date" class="email-bt" placeholder="Date Of Birth" name="udob" required="required">
                  </div>
                  <div class="form-group">
                     <input type="password" class="email-bt" placeholder="Password" name="upass"  required="required">
                  </div>
                  <div class="form-group">
                     <input type="password" class="email-bt" placeholder="Confirm Password" name="cupass"  required="required">
                  </div>
                 
                  <div class="send_btn">    
                     <input type="submit" value="SIGN UP">
                  </div>
               </form>
            </div>
         </div>
      </div>
      <!-- footer section start -->
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
