<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="agri.user.contact" %>

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
    <div class="wrapper">
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
        <!--Inner Header Start-->
        <section class="wf100 p100 inner-header">
            <div class="container">
                <h1>Contact Us</h1>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Contact </a></li>
                    <li><a href="#">Contact One</a></li>
                </ul>
            </div>
        </section>
        <!--Inner Header End-->
        <!--Contact Start-->
        <section class="contact-page wf100 p80">
            <div class="container">
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10">
                        <div class="contact-form mb60">
                            <h3>Feel Free to Contact us</h3>
                            <ul class="cform">
                                <li class="half pr-15">
                                    <input type="text" class="form-control" placeholder="Full Name">
                                </li>
                                <li class="half pl-15">
                                    <input type="text" class="form-control" placeholder="Email">
                                </li>
                                <li class="half pr-15">
                                    <input type="text" class="form-control" placeholder="Contact">
                                </li>
                                <li class="half pl-15">
                                    <input type="text" class="form-control" placeholder="Subject">
                                </li>
                                <li class="full">
                                    <textarea class="textarea-control" placeholder="Message"></textarea>
                                </li>
                                <li class="full">
                                    <input type="submit" value="Contact us" class="fsubmit">
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!--Contact End-->
        <!--Footer Start-->
        <footer class="footer">

            <div class="footer-copyr wf100">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-sm-4">
                            <img src="images/logo.png" alt="">
                        </div>
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
