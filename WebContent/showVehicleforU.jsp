<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import= "adminModel.adminDao" %>
<%@page import= "adminModel.vehicleP" %>
<%@ page import="java.util.ArrayList" %>


<html>
<head>
	<meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Simple House Template</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400" rel="stylesheet" />    
	<link href="css/templatemo-style.css" rel="stylesheet" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css"> 
	 <style>
        .price-container {
            display: flex;
            align-items: center;
        }

        .delete-btn {
            margin-left: 10px;
            transition: transform 0.3s ease;
        }

        .delete-btn:hover {
            transform: scale(1.1);
        }
        
        .tm-gallery-item {
            max-width: 280px;
            margin-bottom: 20px;
        }
        
        .image-container {
            position: relative;
            overflow: hidden;
        }

        .image-container img {
            transition: transform 0.3s ease;
        }

        .image-container:hover img {
            transform: scale(1.0);
        }
        
        .bi-cart {
            font-size: 30px;
            color: rgb(84, 84, 84);
            margin-bottom: 10px;
        }

    </style>
</head>

<body> 
    <% 
        adminDao ad = new adminDao();    
        ArrayList<vehicleP> v= ad.getallVehicles(); 
    %>
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
                                <li class="tm-nav-li"><a href="home.jsp" class="tm-nav-link">Home</a></li>
                                <li class="tm-nav-li"><a href="#" class="tm-nav-link active">Vehicles</a></li>
                                <li class="tm-nav-li"><a href="#" class="tm-nav-link" onclick="alert('Section Is Locked')">Purchase&nbsp;<i class="fa fa-lock" style="font-size:20px"></i></a></li>
                                <li class="tm-nav-li"><a href="#" class="tm-nav-link">Sign Up</a></li>
                                <!-- <li class="tm-nav-li"><a href="contact.html" class="tm-nav-link">Contact</a></li> -->
                            </ul>
                        </nav>	
                    </div>
                </div>
            </div>
        </div>

        <main>
            <header class="row tm-welcome-section">
                <h2 class="col-12 text-center tm-section-title">Welcome to Simple House</h2>
                <p class="col-12 text-center">Total 3 HTML pages are included in this template. Header image has a parallax effect. You can feel free to download, edit and use this TemplateMo layout for your commercial or non-commercial websites.</p>
            </header>
            
            <!-- Gallery -->
            <div class="row tm-gallery">
                <!-- gallery page 1 -->
                <div id="tm-gallery-page-bike" class="tm-gallery-page">
                    <% 
                        for (vehicleP vv : v) { 
                    %>
                    <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                        <figure>
                            <div class="image-container">
                                <img src="img/gallery/<%= vv.getImage()%>" alt="Image" class="img-fluid tm-gallery-img" />
                            </div>

                            <figcaption>
                                <h4 class="tm-gallery-title"><%= vv.getModel() %></h4>
                                <label>Details:</label>
                                <p class="tm-gallery-description">This vehicle is <%= vv.getType()%> with a mileage of <%= vv.getMilage() %>. The purpose of the bike is <%= vv.getPurpose() %>.</p>
                                <p class="tm-gallery-price"><%= vv.getPrice() %>/day</p>
                                <a href="rentVehicle.jsp?id=<%= vv.getId()%>">
                                    <span class="bi bi-cart"></span>
                                </a>
                            </figcaption>
                        </figure>
                    </article>
                    <% 
                        } 
                    %>
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
</body>
</html>
