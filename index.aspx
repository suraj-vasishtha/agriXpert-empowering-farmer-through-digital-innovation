<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="agri.user.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="">
      <meta name="author" content="">
      <link rel="icon" href="images/favicon.png">
      <title>AGRIXPERT</title>
      <!-- CSS FILES START -->
      <link href="css/custom.css" rel="stylesheet">
      <link href="css/color.css" rel="stylesheet">
      <link href="css/responsive.css" rel="stylesheet">
      <link href="css/owl.carousel.min.css" rel="stylesheet">
      <link href="css/bootstrap.min.css" rel="stylesheet">
      <link href="css/prettyPhoto.css" rel="stylesheet">
      <link href="css/all.min.css" rel="stylesheet">
       
      <!-- CSS FILES End -->
   </head>
   <body>
      <div class="wrapper home2">
         <!--Header Start-->
         <header class="header-style-2">
            <nav class="navbar navbar-expand-lg">
                <a class="navbar-brand" href="#" style="font-family: Arial, sans-serif; font-size: 24px; font-weight: bold; color: gold; text-decoration: none; display: inline-flex; align-items: center; padding: 5px 15px; background-color: #1b5e20">
    <img src="images/favicon.png" alt="Plant" style="width: 20px; height: 20px; margin-right: 10px;">
    AGRIXPERT
</a>    
               <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <i class="fas fa-bars"></i> </button>
               <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav mr-auto">
                     <li class="nav-item"> <a class="nav-link starta" href="index.aspx">Home</a> </li>
                     <li class="nav-item"> <a class="nav-link" href="about.aspx">About</a> </li>
                     <li class="nav-item"> <a class="nav-link" href="event.aspx">Events</a> </li>
                   
                     <li class="nav-item"> <a class="nav-link" href="register.aspx">Register</a> </li>
                     <li class="nav-item"> <a class="nav-link" href="login.aspx">Login</a> </li>
                     <li class="nav-item"> <a class="nav-link" href="contact.aspx">Contact Us</a> </li>            
  

                  
                  </ul>

               
           
               </div>
            </nav>
         </header>
         <div id="search">
            <button type="button" class="close">×</button>
            <form class="search-overlay-form">
               <input type="search" value="" placeholder="type keyword(s) here" />
               <button type="submit" class="btn btn-primary"><i class="fas fa-search"></i></button>
            </form>
         </div>
         <!--Header End--> 
         <!--Slider Start-->
         <section id="home-slider" class="owl-carousel owl-theme wf100">
            <div class="item">
               <div class="slider-caption h2slider">
                  <div class="container">
                     <strong>Ecova<span> is the Best</span></strong>
                     <h1>Lets Grow Togeather</h1>
                     <p>AgriXpert</p>
                     <a href="register.aspx" class="active">Find Out More</a> <a href="register.aspx">Join us Now</a> 
                  </div>
               </div>
               <img src="images/h2-slide1.jpg" alt=""> 
            </div>
            <div class="item">
               <div class="slider-caption h2slider">
                  <div class="container">
                     <strong><span>Please</span> Stop Hunting & </strong>
                     <h1>Save WildLife</h1>
                     <p>of <strong>endangered animals</strong> in the world</p>
                     <a href="register.aspx" class="active">Find Out More</a> <a href="register.aspx">Join us Now</a> 
                  </div>
               </div>
               <img src="images/h2-slide2.jpg" alt=""> 
            </div>
            <div class="item">
               <div class="slider-caption h2slider">
                  <div class="container">
                     <strong>Save <span> & don’t waste our life</span> partner</strong>
                     <h1>Water Resource</h1>
                     <p>Before <strong>it’s too late</strong> for us...</p>
                     <a href="register.aspx" class="active">Find Out More</a> <a href="register.aspx">Join us Now</a> 
                  </div>
               </div>
               <img src="images/h2-slide3.jpg" alt=""> 
            </div>
         </section>
         <!--Slider End--> 
         <!--Service Area Start-->
         <section class="services-area wf100">
            <div class="container">
               <ul>
                  <!--box  start-->
                  <li>
                     <div class="sinfo">
                        <img src="images/sericon1.png" alt="">
                        <h6>Recycling</h6>
                        <p>Waste Management</p>
                     </div>
                  </li>
                  <!--box  end--> 
                  <!--box  start-->
                  <li>
                     <div class="sinfo">
                        <img src="images/sericon2.png" alt="">
                        <h6>Wind Energy</h6>
                        <p>Polar, Prevailing, Tropical</p>
                     </div>
                  </li>
                  <!--box  end--> 
                  <!--box  start-->
                  <li>
                     <div class="sinfo">
                        <img src="images/sericon3.png" alt="">
                        <h6>Pure Water</h6>
                        <p>Save Water Resources</p>
                     </div>
                  </li>
                  <!--box  end--> 
                  <!--box  start-->
                  <li class="sinfo">
                     <div class="sinfo">
                        <img src="images/sericon4.png" alt="">
                        <h6>Solar Panels</h6>
                        <p>Save Natural Engery</p>
                     </div>
                  </li>
                  <!--box  end--> 
                  <!--box  start-->
                  <li>
                     <div class="sinfo">
                        <img src="images/sericon5.png" alt="">
                        <h6>Forest Planting</h6>
                        <p>Make Plants Alive for Life</p>
                     </div>
                  </li>
                  <!--box  end-->
               </ul>
            </div>
         </section>
         <!--Service Area End--> 
         <!--About Section Start-->
         <section class="home2-about wf100 p100 gallery">
            <div class="container">
               <div class="row">
                  <div class="col-md-5">
                     <div class="video-img"> 
                        <a href="https://www.youtube.com/watch?v=Qfozqrom7Bk&autoplay=1&width=700" 
                           data-rel="prettyPhoto" 
                           title="YouTube Video">
                           <i class="fas fa-play"></i>
                        </a> 
                        <img src="images/h2about.jpg" alt="Video Thumbnail"> 
                     </div>
                     
                  </div>
                  <div class="col-md-7">
                     <div class="h2-about-txt">
                        <h3>About AgriXpert</h3>
                        <h2>Eco-friendly products can be made from scratch.</h2>
                        <p> If anything’s hot in today’s economy, it’s saving money, including a broad range of green businesses helping people save energy, water, and other resources. </p>
                        <a class="aboutus" href="#">More About us</a> 
                     </div>
                  </div>
               </div>
            </div>
            <div class="home-facts counter pt80">
               <div class="container">
                  <div class="row">
                     <div class="col-lg-3 col-sm-6 col-md-3">
                        <div class="counter-box">
                           <p class="counter-count">89000</p>
                           <p class="ctxt">Trees Planted</p>
                        </div>
                     </div>
                     <div class="col-lg-3 col-sm-6 col-md-3">
                        <div class="counter-box">
                           <p class="counter-count">79000</p>
                           <p class="ctxt">Solar Panels in 2017</p>
                        </div>
                     </div>
                     <div class="col-lg-3 col-sm-6 col-md-3">
                        <div class="counter-box">
                           <p class="counter-count">69000</p>
                           <p class="ctxt">Wildlife Saved</p>
                        </div>
                     </div>
                     <div class="col-lg-3 col-sm-6 col-md-3">
                        <div class="counter-box">
                           <p class="counter-count">59000</p>
                           <p class="ctxt">Served Water Gallons</p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
         <!--About Section End--> 
     



         <!--Footer Start-->
         <footer class="footer">
        
            <div class="footer-copyr wf100">
               <div class="container">
                  <div class="row">
                     <div class="col-md-4 col-sm-4">                 <a class="navbar-brand" href="#" style="font-family: Arial, sans-serif; font-size: 24px; font-weight: bold; color: gold; text-decoration: none; display: inline-flex; align-items: center; padding: 5px 15px; background-color: #1b5e20">
    <img src="images/favicon.png" alt="Plant" style="width: 20px; height: 20px; margin-right: 10px;">
    AGRIXPERT
</a>  </div>
                     <div class="col-md-8 col-sm-8">
                        <p><a target="_blank" href="#">AgriXpert +91 9876543212</a></p>
                     </div>
                  </div>
               </div>
            </div>
         </footer>
         <!--Footer End--> 
      </div>
      <!--   JS Files Start  --> 
      <script src="js/jquery-3.3.1.min.js"></script> 
      <script src="js/jquery-migrate-1.4.1.min.js"></script> 
      <script src="js/popper.min.js"></script> 
      <script src="js/bootstrap.min.js"></script> 
      <script src="js/owl.carousel.min.js"></script> 
      <script src="js/jquery.prettyPhoto.js"></script> 
      <script src="js/isotope.min.js"></script> 
      <script src="js/custom.js"></script>

      


    
   </body>

</html>