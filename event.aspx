<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="event.aspx.cs" Inherits="agri.user._event" %>

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
                <h1>UpNext Events</h1>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Events </a></li>
                    <li><a href="#">Events Grid</a></li>
                </ul>
            </div>
        </section>
        <!--Inner Header End-->
        <!--Causes Start-->
        <section class="wf100 p80 events">
            <div class="event-grid-2">
                <div class="container">
                    <div class="row">
                       
                        
                        
                        <!--Blog Post Start-->
                     <asp:Repeater ID="rptEvents" runat="server">
    <ItemTemplate>
        <div class="col-lg-4 col-md-6">
            <div class="event-post">
                <div class="event-thumb">
                    <a target="_blank" href='<%# Eval("EventURL") %>'><i class="fas fa-link"></i></a>
                   <img src='<%# Eval("ImagePath") %>' alt="Event Image" style="width: 100%; height: 200px; object-fit: cover; border-radius: 8px;" />

                </div>
                <div class="event-txt">
                    <h5><a href='<%# Eval("EventURL") %>'><%# Eval("Title") %></a></h5>
                    <ul class="etime">
                        <li><strong>Date:</strong> <%# Convert.ToDateTime(Eval("Date")).ToString("dd MMMM, yyyy") %></li>
                        <li><strong>Time:</strong> <%# Eval("StartTime") %> - <%# Eval("EndTime") %></li>
                    </ul>
                    <p class="venue"><span>Venue:</span> <%# Eval("Venue") %></p>
                </div>
            </div>
        </div>
    </ItemTemplate>
</asp:Repeater>

                        <!--Blog Post End-->
                    
                  
                      
                
                  
                   
                     
                 
                    </div>
            
                </div>
            </div>
        </section>
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
