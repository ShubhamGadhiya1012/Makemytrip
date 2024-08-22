<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Destination.aspx.cs" Inherits="MakemyTrip.Destination" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Make my Trip</title>

     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Arizonia&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

  <link rel="stylesheet" href="css/animate.css">
  
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="css/magnific-popup.css">

  <link rel="stylesheet" href="css/bootstrap-datepicker.css">
  <link rel="stylesheet" href="css/jquery.timepicker.css">

  
  <link rel="stylesheet" href="css/flaticon.css">
  <link rel="stylesheet" href="css/style.css">


    <style>
   
   /*@import url("https://fonts.googleapis.com/css?family=Fira+Sans:400,500,600,700,800");*/


/*Card css*/


body {
  background: #e2e2e2;
  width: 100%;
  height: 100vh;
}
body .card1 {
  width: 1000px;
  height: 400px;
  background: transparent;

  left: 0;
  right: 0;
  margin: auto;
  top: 50px;
  bottom: 0;
  border-radius: 10px;
  -webkit-border-radius: 10px;
  -moz-border-radius: 10px;
  box-shadow: 0px 20px 30px 3px rgba(0, 0, 0, 0.55);
}
body .card_left1 {
  width: 40%;
  height: 400px;
  float: left;
  overflow: hidden;
  background: transparent;
}
body .card_left1 img {
  width: 100%;
  height: 400px;
  border-radius: 10px 0 0 10px;
  -webkit-border-radius: 10px 0 0 10px;
  -moz-border-radius: 10px 0 0 10px;
  position: relative;
}
body .card_right1 {
  width: 60%;
  float: left;
  background: #000000;
  height: 400px;
  border-radius: 0 10px 10px 0;
  -webkit-border-radius: 0 10px 10px 0;
  -moz-border-radius: 0 10px 10px 0;
}
body .card_right1 h1 {
  color: white;
  font-family: "Montserrat", sans-serif;
  font-weight: 400;
  text-align: left;
  font-size: 40px;
  margin: 30px 0 0 0;
  padding: 0 0 0 40px;
  letter-spacing: 1px;
}
body .card_right__details1 ul {
  list-style-type: none;
  padding: 0 0 0 40px;
  margin: 10px 0 0 0;
}
body .card_right__details1 ul li {
  display: inline;
  color: #e3e3e3;
  font-family: "Montserrat", sans-serif;
  font-weight: 400;
  font-size: 25px;
  padding: 0 40px 0 0;
}


body .card_right__review1 p {
  color: white;
  font-family: "Montserrat", sans-serif;
  font-size: 16px;
  padding: 0 40px 0 40px;
  letter-spacing: 1px;
  margin: 10px 0 10px 0;
  line-height: 20px;
}
body .card_right__review1 a {
  text-decoration: none;
  font-family: "Montserrat", sans-serif;
  font-size: 14px;
  padding: 0 0 0 40px;
  color: #ffda00;
  margin: 0;
}
body .card_right__button1 {
  padding: 0 0 0 40px;
  margin: 0px 0 0 0;
}
body .card_right__button1 a {
  color: orange;
  text-decoration: none;
  font-family: "Montserrat", sans-serif;
  border: 2px solid orange;
  padding: 10px 10px 10px 10px;
  font-size: 12px;
  background-size: 12px 12px;
 
   border-radius: 5px;
  transition-property: all;
  transition-duration: 0.5s;
}
body .card_right__button1 a:hover {
  color: #000000;
  text-align:center;
  background-color: orange;
   background-size: 12px 12px;
  background-repeat: no-repeat;
  background-position: 10% 50%;
  cursor: pointer;
  transition-property: all;
  transition-duration: 0.5s;
}
   </style>
   
   

     
</head>
<body>
    <form runat="server">
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
   <div class="container">
     <a class="navbar-brand" href="User_Profile.aspx">Make my Trip<span><asp:Label ID="user_name" runat="server" Text="User"></asp:Label></span></a>
     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
       <span class="oi oi-menu"></span> Menu
     </button>

     <div class="collapse navbar-collapse" id="ftco-nav">
       <ul class="navbar-nav ml-auto">
         <li class="nav-item"><a href="HomePage.aspx" class="nav-link">Home</a></li>
         <li class="nav-item"><a href="About.aspx" class="nav-link">About</a></li>
         <li class="nav-item active"><a href="Destination.aspx" class="nav-link">Destination</a></li>
         <li class="nav-item"><a href="Resort.aspx" class="nav-link">Resort</a></li>
         <li class="nav-item"><a href="Contact.aspx" class="nav-link">Contact</a></li>
            <li class="nav-item"><a href="Index.aspx" class="nav-link"><asp:Button class="btn btn-primary"> Logout</asp:Button> </a></li>
       </ul>
     </div>
   </div>
 </nav>
 <!-- END nav -->
 
 <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg_1.jpg');">
  <div class="overlay"></div>
  <div class="container">
    <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
      <div class="col-md-9 ftco-animate pb-5 text-center">
       <p class="breadcrumbs"><span class="mr-2"><a href="HomePage.aspx">Home <i class="fa fa-chevron-right"></i></a></span> <span>Destinations <i class="fa fa-chevron-right"></i></span></p>
       <h1 class="mb-0 bread">Destinations</h1>
     </div>
   </div>
 </div>
</section>


         <% for (int i = 0; i < dname.Length; i++) { %>


   <br><br>
<div class='card1'>
  <div class='card_left1'>
    <img src="<%=dimage[i]%>">
  </div>
  <div class='card_right1'>
    <h1><%=dname[i]%></h1>
    <div class='card_right__details1'>
	<br>
    <ul><li>Price : <%=dprice[i]%> INR per person</li></ul>

     <br>
      <div class='card_right__review1'>
        <p>• <%=ddescription[i]%><br> • <%=dcategory[i]%><br>• <%=dplace[i]%><br>
		<br>
		• <%=ddays[i]%> Days at 5 Star Hotel •</p>
       <br>   </div>
      <div class='card_right__button1'>
        <a href='Book_Destinations.aspx?id=<%=did[i] %>' >Book Now</a>
      </div>
    </div>
  </div>
</div>
<br>





        <% }%>
    
 


        <footer class="ftco-footer bg-bottom ftco-no-pt" style="background-image: url(images/bg_3.jpg);">
            <div class="container">
                <div class="row mb-5">
                    <div class="col-md pt-5">
                        <div class="ftco-footer-widget pt-md-5 mb-4">
                            <h2 class="ftco-heading-2">About</h2>
                            <p>The World Travel Guide (WTG) is the flagship digital consumer brand within the Columbus Travel Media portfolio. </p>
                            <ul class="ftco-footer-social list-unstyled float-md-left float-lft">
                                <li class="ftco-animate"><a href="https://twitter.com/i/flow/login?input_flow_data=%7B%22requested_variant%22%3A%22eyJsYW5nIjoiZW4ifQ%3D%3D%22%7D"><span class="fa fa-twitter"></span></a></li>
                                <li class="ftco-animate"><a href=https://www.facebook.com/"><span class="fa fa-facebook"></span></a></li>
                                <li class="ftco-animate"><a href="https://www.instagram.com/"><span class="fa fa-instagram"></span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md pt-5 border-left">
                        <div class="ftco-footer-widget pt-md-5 mb-4 ml-md-5">
                            <h2 class="ftco-heading-2">Infromation</h2>
                            <ul class="list-unstyled">
                                <li><a href="#" class="py-2 d-block">Online Enquiry</a></li>
                                <li><a href="#" class="py-2 d-block">General Enquiries</a></li>
                                <li><a href="#" class="py-2 d-block">Booking Conditions</a></li>
                                <li><a href="#" class="py-2 d-block">Call Us</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md pt-5 border-left">
                        <div class="ftco-footer-widget pt-md-5 mb-4">
                            <h2 class="ftco-heading-2">Quick Links</h2>
                            <ul class="list-unstyled">
                                <li><a href="HomePage.aspx" class="py-2 d-block">Home</a></li>
                                <li><a href="About.aspx" class="py-2 d-block">About</a></li>
                                <li><a href="Destination.aspx" class="py-2 d-block">Destination</a></li>
                                <li><a href="Resort.aspx" class="py-2 d-block">Resort</a></li>
                                <li><a href="Contact.aspx" class="py-2 d-block">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md pt-5 border-left">
                        <div class="ftco-footer-widget pt-md-5 mb-4">
                            <h2 class="ftco-heading-2">Have a Questions?</h2>
                            <div class="block-23 mb-3">
                                <ul>
                                    <li><span class="icon fa fa-map-marker"></span><span class="text">A 104 BusinessHub First floor,Thaltej Ahmedabad 380052 Gujarat</span></li>
                                    <li><a href="#"><span class="icon fa fa-phone"></span><span class="text">+91 9898457047</span></a></li>
                                    <li><a href="#"><span class="icon fa fa-paper-plane"></span><span class="text">makemytrip104@gmail.com</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 text-center">

                        <p>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                            All rights reserved | Make my Trip  <i class="fa fa-heart" aria-hidden="true"></i></a>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </p>
                    </div>
                </div>
            </div>
        </footer>



    



    <!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


<script src="js/jquery.min.js"></script>
<script src="js/jquery-migrate-3.0.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.animateNumber.min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="js/google-map.js"></script>
<script src="js/main.js"></script>

</form>
</body>

</html>
