<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Contact</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <!-- owl stylesheets --> 
      <link href="https://fonts.googleapis.com/css?family=Poppins:400,700|Raleway:400,700,800&display=swap" rel="stylesheet">
      <link rel="stylesheet" href="css/owl.carousel.min.css">
      <link rel="stylesoeet" href="css/owl.theme.default.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
      
<style>
   table {
      width: 100%;
      border-collapse: collapse;
   }

   th, td {
      padding: 8px;
      text-align: left;
      border-bottom: 1px solid #ddd;
   }

   th {
      background-color: #f2f2f2;
   }
</style>



</head>
<body>
  <!-- header section start -->
      <div class="header_section header_bg">
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a href="index.html" class="logo"><img src="images/logo.png"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
               <ul class="navbar-nav mr-auto">
                  <li class="nav-item active">
                     <a class="nav-link" href="index.html">Home</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="">Show Collection</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="shop.html">Add Vheicles</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="news.html">Show Users</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="contact.html">Contact Us</a>
                  </li>
               </ul>
               <form class="form-inline my-2 my-lg-0">
                  <div class="login_menu">
                     <ul> 
                        <li><a href="userRegister.jsp">Sign Out</a></li>
                         <li><a href="#"><img src="images/trolly-icon.png"></a></li>
                        <li><a href="#"><img src="images/search-icon.png"></a></li> 
                     </ul>
                  </div>
                  <div></div>
               </form>
            </div>
            <div id="main">
               <span style="font-size:36px;cursor:pointer; color: #fff" onclick="openNav()"><img src="images/toggle-icon.png" style="height: 30px;"></span>
            </div>
         </nav>
         <!-- banner section start -->
         <div class="banner_section layout_padding">
            <div id="main_slider" class="carousel slide" data-ride="carousel">
               <div class="carousel-inner">
                  <div class="carousel-item active">
                     <div class="container">
                        <div class="row">
                           <div class="col-md-7">
                              <div class="best_text">Best</div>
                              <div class="image_1"><img src="images/respolBike.png"></div>
                           </div>
                           <div class="col-md-5">
                              <h1 class="banner_taital">Something different</h1>
                              <p class="banner_text">It is a long established fact that a reader will be distracted by the readable content </p>
                              <div class="contact_bt"><a href="userLogin.html">Shop Now</a></div>
                           </div>
                        </div>
                     </div>
                  </div>

                  </div>
               </div>
               <a class="carousel-control-prev" href="#main_slider" role="button" data-slide="prev">
               <i class="fa fa-angle-left"></i>
               </a>
               <a class="carousel-control-next" href="#main_slider" role="button" data-slide="next">
               <i class="fa fa-angle-right"></i>
               </a>
            </div>
         </div>
         <!-- banner section end -->
<div class="container">
   <div class="row">
      <div class="col-md-12">
         <table class="table">
            <thead>
               <tr>
                  <th>#</th>
                  <th style="text-align:center;">USERNAME</th>
                  <th style="text-align:center;">GENDER</th>
                  <th style="text-align:center;">DATE OF BIRTH</th>
                  <th style="text-align:center;">E-MAIL</th>
                  <th style="text-align:center;">PASSWORD</th>
                  <th style="text-align:center;">ACTION</th>
               </tr>
            </thead>
            <tbody>
               <tr>
                  <td style="text-align:center;">1</td>
                  <td style="text-align:center;">Data 1</td>
                  <td style="text-align:center;">Data 2</td>
                  <td style="text-align:center;">Data 3</td>
                  <td style="text-align:center;">Data 4</td>
                  <td style="text-align:center;">Data 5</td>
                  <td style="text-align:center;">
                     <button class="btn btn-primary">UPDATE</button>
                     <button class="btn btn-secondary">DELETE</button>
                  </td>
               </tr>
            </tbody>
         </table>
      </div>
   </div>
</div>



      <!-- header section end -->
 <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="js/plugin.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
      <!-- javascript --> 
      <script src="js/owl.carousel.js"></script>
      <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
      <script>
         function openNav() {
           document.getElementById("mySidenav").style.width = "250px";
           document.getElementById("main").style.marginLeft = "250px";
         }
         
         function closeNav() {
           document.getElementById("mySidenav").style.width = "0";
           document.getElementById("main").style.marginLeft= "0";
          
         }

         $("#main").click(function(){
             $("#navbarSupportedContent").toggleClass("nav-normal")
         })
      </script>
     

</body>
</html>