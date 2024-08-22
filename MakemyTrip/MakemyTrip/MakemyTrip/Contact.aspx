﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MakemyTrip.Contact" %>

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
</head>
<body>
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
         <li class="nav-item"><a href="Destination.aspx" class="nav-link">Destination</a></li>
         <li class="nav-item"><a href="Resort.aspx" class="nav-link">Resort</a></li>
         <li class="nav-item active"><a href="Contact.aspx" class="nav-link">Contact</a></li>
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
       <p class="breadcrumbs"><span class="mr-2"><a href="HomePage.aspx">Home <i class="fa fa-chevron-right"></i></a></span> <span>Contact us <i class="fa fa-chevron-right"></i></span></p>
       <h1 class="mb-0 bread">Contact us</h1>
     </div>
   </div>
 </div>
</section>

<section class="ftco-section ftco-no-pb contact-section mb-4">
  <div class="container">
    <div class="row d-flex contact-info">
      <div class="col-md-3 d-flex">
       <div class="align-self-stretch box p-4 text-center">
        <div class="icon d-flex align-items-center justify-content-center">
         <span class="fa fa-map-marker"></span>
       </div>
       <h3 class="mb-2">Address</h3>
       <p>	A 104 BusinessHub First floor,Thaltej Ahmedabad 380052 Gujarat</p>
     </div>
   </div>
   <div class="col-md-3 d-flex">
     <div class="align-self-stretch box p-4 text-center">
      <div class="icon d-flex align-items-center justify-content-center">
       <span class="fa fa-phone"></span>
     </div>
     <h3 class="mb-2">Contact Number</h3>
     <p><a href="tel://9898457047">+91 9898457047 </a></p>
   </div>
 </div>
 <div class="col-md-3 d-flex">
   <div class="align-self-stretch box p-4 text-center">
    <div class="icon d-flex align-items-center justify-content-center">
     <span class="fa fa-paper-plane"></span>
   </div>
   <h3 class="mb-2">Email Address</h3>
   <p><a href="mailto:info@yoursite.com">makemytrip104@gmail.com</a></p>
 </div>
</div>
<div class="col-md-3 d-flex">
 <div class="align-self-stretch box p-4 text-center">
  <div class="icon d-flex align-items-center justify-content-center">
   <span class="fa fa-globe"></span>
 </div>
 <h3 class="mb-2">Website</h3>
 <p><a href="#">www.makemytrip.com</a></p>
</div>
</div>
</div>
</div>
</section>

<section class="ftco-section contact-section ftco-no-pt">
  <div class="container">
    <div class="row block-9">
      <div class="col-md-6 order-md-last d-flex">
        <form id="form1" runat="server" class="bg-light p-5 contact-form">
          <div class="form-group">
              <asp:TextBox class="form-control" ID="C_Name" placeholder="Your Name"  runat="server" ></asp:TextBox>  
          
          </div>
          <div class="form-group">
               <asp:TextBox class="form-control" ID="C_Email" MaxLength="50" PlaceHolder="Your Email" runat="server" textMode="Email" /> 

           
          </div>
          <div class="form-group">
                <asp:TextBox class="form-control" ID="C_Subject" placeholder="Subject"  runat="server" ></asp:TextBox>  
          
           
          </div>
          <div class="form-group">
                <asp:TextBox class="form-control" ID="C_Message" placeholder="Message"   runat="server" ></asp:TextBox>  
          
            
          </div>
          <div class="form-group">
                <asp:Button class="btn btn-primary py-3 px-5" ID="btn_signin" runat="server" Text="Send Message" onclick="Contact_submit"  />
         
          </div>
        </form>
        
      </div>

      <div class="col-md-6 d-flex">
       <div id="map" class="bg-white"></div>
     </div>
   </div>
 </div>
</section>


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

</body>
</html>
