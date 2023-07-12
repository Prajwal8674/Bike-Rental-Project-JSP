<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="adminModel.adminDao" %>
<%@page import="adminModel.vehicleP" %>
<%@page import="java.util.ArrayList" %>

<html>
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>Simple House - About Page</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400" rel="stylesheet" />
  <link href="css/all.min.css" rel="stylesheet" />
  <link href="css/templatemo-style.css" rel="stylesheet" />
  </head>
  <style>
  body {
    color: #1a202c;
    text-align: left;
    background-color: #ccc;
  }

  .main-body {
    padding: 15px;
  }

  .card {
    box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0 rgba(0, 0, 0, .06);
  }

  .card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0 solid rgba(0, 0, 0, .125);
    border-radius: .25rem;
  }

  .card-body {
    flex: 1 1 auto;
    min-height: 1px;
    padding: 1rem;
    margin: 0rem;
  }

  .gutters-sm {
    margin-right: -8px;
    margin-left: -8px;
  }

  .gutters-sm>.col,
  .gutters-sm>[class*=col-] {
    padding-right: 8px;
    padding-left: 8px;
  }

  .mb-3,
  .my-3 {
    margin-bottom: 1rem!important;
  }
  

  .bg-gray-300 {
    background-color: #e2e8f0;
  }

  .h-100 {
    height: 100%!important;
  }

  .shadow-none {
    box-shadow: none!important;
  }

  .col-md-9 {
    flex: 0 0 40%;
    max-width: 40%;
  }

  .card-body h6 {
    margin-bottom: 10px;
      text-align: right;
    
  }
  .row {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  margin-left: -15px;
  margin-right: -15px;
  justify-content:space-evenly;
}
 .card-body img.admin-image {
    width: 250px;
  }
  
  button{
  padding: 10px 20px;
   background-color: #7c7c7c;
   color:white;
   text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s;
  transition-duration: 0.4s;
  }
  .button2:hover {
  
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
</style>


<body> 
   <div class="container">
      <div class="placeholder">
        <div
          class="parallax-window"
          data-parallax="scroll"
          data-image-src="img/bGarage.webp">
          <div class="tm-header">
            <div class="row tm-header-inner">
              <div class="col-md-6 col-12">
                <img
                  src="img/simple-house-logo.png"
                  alt="Logo"
                  class="tm-site-logo"/>
                <div class="tm-site-text-box">
                  <h1 class="tm-site-title">Marvel Autos</h1>
                  <h6 class="tm-site-description">List Of Riders</h6>
                </div>
              </div>
              <nav class="col-md-6 col-12 tm-nav">
                <ul class="tm-nav-ul">
                  <li class="tm-nav-li"><a href="home.jsp" class="tm-nav-link ">Home</a></li>
                  
                  <li class="tm-nav-li"><a href="showVehicleforU.jsp" class="tm-nav-link">vehicle</a></li>
                  
                  <li class="tm-nav-li"><a href="#" class="tm-nav-link active">Purchase</a></li>
                  <li class="tm-nav-li"><a href="userRegister.html" class="tm-nav-link ">Sign out</a></li>
                </ul>
              </nav>
            </div>
          </div>
        </div>
      </div>
     <form action="sendVehicleToDB.jsp">
      <main>
       <%
          int id = Integer.parseInt(request.getParameter("id"));
          String pid =request.getParameter("pid");

          
          adminDao ad = new adminDao();
          vehicleP v = new vehicleP();
          v=ad.getOneVehicle(id);
          session.setAttribute("model",v.getModel() );
          session.setAttribute("type",v.getType());
          session.setAttribute("price",v.getPrice());
          session.setAttribute("idV",v.getId());
          {%>
      
 <div class="main-body"> 
 
      <div class="row gutters-sm">
        <div class="col-md-4 mb-3">
          <div class="card">
            <div class="card-body text-center">
              <div class="d-flex flex-column align-items-center text-center">
                <img src="img/gallery/<%=v.getImage()%>"alt="Admin" class="admin-image">
                <div class="mt-3">
                  <h4><%=v.getModel() %></h4>
                </div>
              </div>
            </div>
          </div>
          <div class="card mt-3">
          </div>
        </div>
        <div class="col-md-9">
          <div class="card mb-3">
            <div class="card-body">
              <div class="row">
                <div class="col-sm-3">
                  <h6 class="mb-0">MODEL</h6>
                </div>
                <div class="col-sm-9 text-secondary">
                  <p class="mb-2"><%=v.getModel() %></p>
                </div>
              </div>
              <hr>
              <div class="row">
                <div class="col-sm-3">
                  <h6 class="mb-0">MILAGE</h6>
                </div>
                <div class="col-sm-9 text-secondary">
                  <%=v.getMilage()%>kmpl
                </div>
              </div>
              <hr>
              <div class="row">
                <div class="col-sm-3">
                  <h6 class="mb-0">TYPE</h6>
                </div>
                <div class="col-sm-9 text-secondary"name="type">
                 <p class="mb-2"> <%=v.getType() %></p>
                </div>
              </div>
              <hr>
              <div class="row">
                <div class="col-sm-3">
                  <h6 class="mb-0">PURPOSE</h6>
                </div>
                <div class="col-sm-9 text-secondary">
                 <%=v.getPurpose() %>
                </div>
              </div>
              <hr>
              <div class="row">
                <div class="col-sm-3" name="price">
                  <h6 class="mb-0">Price</h6>
                </div>
                <div class="col-sm-9 text-secondary" >
                  <p class="mb-2"name="price"><%=v.getPrice() %>/day</p>
                </div>
              </div>
              <%
              String email = (String) session.getAttribute("email");
              if(email!=null){
              %>
            	  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Email</h6>
                    </div>
                    <div class="col-sm-9 text-secondary" name="uemail">
                     <%=email%> 
                    </div>
                  </div>   
              <%}
             
              %>
                 
              <hr>
              <div class="row">
                <div class="col-sm-12">
                <button class="button button2" >PURCHASE</button>
                </div>
                
              </div>
            </div>
            
          </div>
        </div>
        
      </div>
      
    </div>
    <% } %>
    </form>
    
    
        <div class="tm-section tm-container-inner">
          <div class="row">
            <div class="col-12 table-responsive">
                <div class="tm-section tm-container-inner">
                    <div class="row">
                      <div class="col-12">
                       
                      </div>
                    </div>
                  </div>
            </div>
          </div>
        </div>

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
                <p class="tm-mb-45">
                  Step into our bike rental garage, where a world of
                  pedal-powered exploration awaits. With a diverse fleet of
                  high-quality bicycles, we offer the perfect ride for every
                  adventure seeker. Whether you're craving an exhilarating
                  mountain trail or a leisurely cruise along scenic paths, our
                  garage is your gateway to unforgettable cycling experiences.
                  Choose your wheels, embrace the freedom of the open road, and
                  embark on a two-wheeled journey like no other.
                </p>
                <a href="userLogin.jsp" class="tm-btn tm-btn-default tm-right"
                  >Read More</a
                >
              </div>
            </div>
          </div>
          
        </div>
        
      </main>

      <footer class="tm-footer text-center">
        <p>
          Copyright &copy; 2020 Simple House | Design:
          <a rel="nofollow" href="https://templatemo.com">TemplateMo</a>
        </p>
      </footer>
    </div>

    <script src="js/jquery.min.js"></script>
    <script src="js/parallax.min.js"></script>
    <script>
      $(document).ready(function () {
        // Handle click on paging links
        $(".tm-paging-link").click(function (e) {
          e.preventDefault();

          var page = $(this).text().toLowerCase();
          $(".tm-gallery-page").addClass("hidden");
          $("#tm-gallery-page-" + page).removeClass("hidden");
          $(".tm-paging-link").removeClass("active");
          $(".tm-paging-link").removeClass("hidden");

          $(this).addClass("active");
        });
      });
    </script>
  
  
  
  
  
  
  
</body>
</html>
