<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="agri.user.register" %>

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
                     <li class="nav-item"> <a class="nav-link" href="Scheme.aspx">Scheme</a> </li>
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
                <h1>My Account</h1>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">My Account </a></li>
                </ul>
            </div>
        </section>
        <!--Inner Header End-->
        <!--Causes Start-->
       <form id="MainForm" runat="server">
    <section class="wf100 p80">
        <div class="container">
            <div class="row">
                <!-- Register Form -->
                  <div class="col-lg-2">
    
  </div>
              <div class="col-lg-8">
    <div class="myaccount-form">
        <h3>Register Your Account</h3>
      
            <ul class="row">
                <li class="col-md-6">
                    <div class="input-group">
                        <input type="text" id="name" runat="server" class="form-control" placeholder="Your Name" pattern="^[A-Za-z\s]{2,50}$" title="Only letters and spaces allowed, 2-50 characters" required />
                    </div>
                </li>
                <li class="col-md-6">
                    <div class="input-group">
                        <input type="tel" id="phn" runat="server" class="form-control" placeholder="Contact #" pattern="^[6-9]\d{9}$" title="Enter valid 10-digit Indian mobile number" required />
                    </div>
                </li>
                <li class="col-md-6">
                    <div class="input-group">
                        <input type="email" id="email" runat="server" class="form-control" placeholder="Email Address" pattern="^[\w\.-]+@[\w\.-]+\.\w{2,4}$" title="Enter a valid email address" required />
                    </div>
                </li>
                <li class="col-md-6">
                    <div class="input-group">
                        <input type="text" id="pincode" runat="server" class="form-control" placeholder="Pin Code" pattern="^\d{6}$" title="Enter a valid 6-digit pin code" required />
                    </div>
                </li>
                <li class="col-md-6">
                    <div class="input-group">
                        <input type="password" id="pswd" runat="server" class="form-control" placeholder="Password" pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$" title="Minimum 6 characters, at least one letter and one number" required />
                    </div>
                </li>
                <li class="col-md-6">
                    <div class="input-group">
                        <input type="password" id="cpswd" runat="server" class="form-control" placeholder="Re-enter Password" required />
                    </div>
                </li>
                <li class="col-md-6">
                    <div class="input-group">
                        <select id="userType" runat="server" class="form-control" required>
                            <option value="">Select User Type</option>
                            <option value="User">User</option>
                            <option value="Vendor">Vendor</option>
                        </select>
                    </div>
                </li>
                <li class="col-md-12">
                    <div class="input-group form-check">
                        <input type="checkbox" id="chkAgree" class="form-check-input" required />
                        <label class="form-check-label" for="chkAgree">I agree to the Terms of <a href="#">Services & Privacy Policy</a></label>
                    </div>
                </li>
                <li class="col-md-12">
    
                    <input type="submit" class="reg" runat="server" onserverclick="btnRegister_Click" value="Register Your Account"/>
                </li>
            </ul>

    </div>
</div>

                <!-- Login Form -->
              
            </div>
        </div>
    </section>
</form>

        <!--Causes End-->
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
