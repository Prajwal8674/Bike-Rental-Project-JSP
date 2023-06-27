<!DOCTYPE html>
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
    <title>Email Already Exists Popup</title>
    <style>
        .popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            z-index: 9999;
            text-align: center;
        }

        .overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 9998;
        }

        .popup p {
            margin-bottom: 15px;
        }

        .popup button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
 <div class="contact_section layout_padding">
         <div class="container">
            <div class="contact_main">
               <h1 class="request_text">REGISTER HERE</h1>
               <form action="userRegister">
                  <div class="form-group">
                     <input type="text" class="email-bt" placeholder="Username" name="uname">
                  </div>
                  <div class="form-group">
                     <input type="text" class="email-bt" placeholder="Email" name="uemail">
                  </div>
                  <div class="form-group">
                     <select name="ugen" class="email-bt">
                     <option selected>Male</option>
                     <option>Female</option>
                     <option>Other</option>
                  </select>                 
                </div>            
                  <div class="form-group">
                     <input type="date" class="email-bt" placeholder="Date Of Birth" name="udob">
                  </div>
                  <div class="form-group">
                     <input type="text" class="email-bt" placeholder="Password" name="upass">
                  </div>
                  <div class="form-group">
                     <input type="text" class="email-bt" placeholder="Confirm Password" name="cupass">
                  </div>
                  
                  <div class="send_btn">
                  <input type="submit" value="SIGN UP">
                  </div>
               </form>
               
            </div>
         </div>
      </div>
      <!-- footer section start -->
      <div class="footer_section layout_padding">
        
         </div>
      
         
    
    <% if (request.getAttribute("popupVisible") != null) { %>
        <div class="popup" id="popup">
            <p>Email already exists. Please choose a different email.</p>
            <button id="closeButton">Close</button>
        </div>
        <div class="overlay" id="overlay"></div>

        <script>
            var popup = document.getElementById("popup");
            var overlay = document.getElementById("overlay");
            var closeButton = document.getElementById("closeButton");

            closeButton.addEventListener("click", function () {
                // Hide the popup
                popup.style.display = "none";
                overlay.style.display = "none";
            });

            // Display the popup on page load
            popup.style.display = "block";
            overlay.style.display = "block";
        </script>
    <% } %>
</body>
</html>
