<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%@page import="adminModel.adminP" %>
    <%@page import="adminModel.adminDao" %>
    <%@page import="userModel.userDao" %>
    <%@page import="userModel.userP" %>
    <%@page import="java.util.ArrayList" %> 
    
  <html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Simple House Template</title>
    <link
      href="https://fonts.googleapis.com/css?family=Open+Sans:400"
      rel="stylesheet"
    />
    <link href="css/templatemo-style.css" rel="stylesheet" />
    <style>
      .tm-table {
        width: 100%;
        border-collapse: collapse;
        border: 1px solid #ddd;
        margin-top: 10px;
      }

      .tm-table th,
      .tm-table td {
        padding: 8px;
        text-align: left;
        border-bottom: 1px solid #ddd;
      }

      .tm-table th {
        background-color: #f5f5f5;
      }

      /* Add padding between table and content below */
      .tm-section {
        padding-bottom: 80px;
      }

      .btn {
        padding: 8px 20px;
        margin-right: 10px;
        font-size: 14px;
        border-radius: 4px;
      }

      .btn-primary {
        background-color: #566648;
        color: #fff;
      }

      .btn-secondary {
        background-color: #6c757d;
        color: #fff;
      }
      .table-responsive {
        overflow-x: auto;
      }
      .tm-search-form {
    display: flex;
    align-items: center;
    justify-content: center; /* Add this line */
    margin-bottom: 20px; /* Add margin bottom for spacing */
  }

  .tm-search-input {
    padding: 8px;
    width: 200px;
    border: 1px solid #ddd;
    border-radius: 4px;
  }

  .tm-search-button {
    padding: 8px 20px;
    margin-left: 10px;
    font-size: 14px;
    border-radius: 4px;
    background-color: #566648;
    color: #fff;
    border: none;
    cursor: pointer;
  }
    </style>
  </head>

  <body>
    <div class="container">
      <!-- Top box -->
      <!-- Logo & Site Name -->
      <div class="placeholder">
        <div
          class="parallax-window"
          data-parallax="scroll"
          data-image-src="img/bGarage.webp"
        >
          <div class="tm-header">
            <div class="row tm-header-inner">
              <div class="col-md-6 col-12">
                <img
                  src="img/simple-house-logo.png"
                  alt="Logo"
                  class="tm-site-logo"
                />
                <div class="tm-site-text-box">
                  <h1 class="tm-site-title">Marvel Autos</h1>
                  <h6 class="tm-site-description">List Of Riders</h6>
                </div>
              </div>
              <nav class="col-md-6 col-12 tm-nav">
                <ul class="tm-nav-ul">
                  <li class="tm-nav-li">
                    <a href="homeAdmin.jsp" class="tm-nav-link ">Home</a>
                  </li>
                  <li class="tm-nav-li">
                    <a href="about.html" class="tm-nav-link">About</a>
                  </li>
                  <li class="tm-nav-li">
                    <a href="#" class="tm-nav-link active">Riders</a>
                  </li>
                  <li class="tm-nav-li">
                    <a href="userRegister.html" class="tm-nav-link ">Sign out</a>
                  </li>
                </ul>
              </nav>
            </div>
          </div>
        </div>
      </div>

      <main>
        <header class="row tm-welcome-section">
          <h2 class="col-12 text-center tm-section-title">
            Welcome To Marvel Autos
          </h2>
          <p class="col-12 text-center">
            When you ride a bike and you get your heart racing in that close
            proximity to the world, you feel a part of it, you feel a part of
            your environment. It's intoxicating." - David Byrne
          </p>
        </header>

        <div class="tm-section tm-container-inner">
          <div class="row">
            <div class="col-12 table-responsive">
                <div class="tm-section tm-container-inner">
                    <div class="row">
                      <div class="col-12">
                        <form class="tm-search-form">
                          <input type="text" name="search" placeholder="Search..." class="tm-search-input" />
                          <button type="submit" class="tm-search-button">Search</button>
                        </form>
                      </div>
                    </div>
                  </div>
              <table class="tm-table">
                <thead>
                  <tr>
      <th style="width: 5%;text-align: center;">#</th>
      <th style="width: 15%; text-align: center;">USERNAME</th>
      <th style="width: 10%; text-align: center;">GENDER</th>
      <th style="width: 15%; text-align: center;">DATE OF BIRTH</th>
      <th style="width: 15%; text-align: center;">E-MAIL</th>
      <th style="width: 15%; text-align: center;">PASSWORD</th>
      <th style="width: 30%; text-align: center;">ACTION</th>
    </tr>
                </thead>
                <tbody>
           
                  <%
                  adminDao ad = new adminDao();    
                  ArrayList<userP> p= ad.getallRiders(); 
                  %>
                  <%
                  for(userP pp:p){
                	  out.println("<tr>");
      	            out.println("<td style='text-align: center'>"+pp.getId()+"</td>");
      	            out.println("<td style='text-align: center'>"+pp.getUname()+"</td>");
      	            out.println("<td style='text-align: center'>"+pp.getUgen()+"</td>");
      	            out.println("<td style='text-align: center'>"+pp.getUdob()+"</td>");
      	            out.println("<td style='text-align: center'>"+pp.getUemail()+"</td>");
      	            out.println("<td style='text-align: center'>"+pp.getUpass()+"</td>");
      	            out.println("<td>");
      	            out.print("<a href=\"updateRider.jsp?id="+ pp.getId()+"\"><button class=\"btn btn-primary\">UPDATE</button></a>");
      	            out.print("<a href=\"removeRider.jsp?id="+ pp.getId()+"\"><button class=\"btn btn-secondary\">DELETE</button></a>");
      	            out.println("</td>");
      	            out.println("</tr>");
                	  
                  } %>
                 
                  

                  <!-- Add more rows as needed -->
                </tbody>
              </table>
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
