<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDashboard.aspx.cs" Inherits="agri.user.UserDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="images/favicon.png">
    <title>ECO HTML</title>
    <!-- CSS FILES START -->
    <link href="css/custom.css" rel="stylesheet">
    <link href="css/color.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <link href="css/owl.carousel.min.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/all.min.css" rel="stylesheet">
      <link href="css/intro.css" rel="stylesheet" />
    <!-- CSS FILES End -->
</head>
<body>
    <form runat="server">
    <div class="wrapper">
        <!--Header Start-->
        <header class="header-style-2">
            <nav class="navbar navbar-expand-lg">
   <a class="navbar-brand" href="#" style="font-family: Arial, sans-serif; font-size: 24px; font-weight: bold; color: gold; text-decoration: none; display: inline-flex; align-items: center; padding: 5px 15px; background-color: #1b5e20">
    <img src="images/favicon.png" alt="Plant" style="width: 20px; height: 20px; margin-right: 10px;">
    AGRIXPERT
</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="fas fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item"><a class="nav-link" href="UserDashboard.aspx">Home</a> </li>
                        <li class="nav-item"><a class="nav-link shop" href="../shop/product.aspx">Shoping</a> </li>
                           <li class="nav-item"><a class="nav-link rmc" href="rmc.aspx">RMC</a> </li>
                           <li class="nav-item"> <a class="nav-link" href="Scheme.aspx">Scheme</a> </li>
                           <li class="nav-item"><a class="nav-link rmc" href="wallet.aspx">Wallet</a> </li>
                         
                          <li class="nav-item"><a class="nav-link" href="../logout.aspx">Logout</a> </li>
          


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
                <h3 style="color:white">Welcome Back</h3>
                <ul>
                    <h2 style="color:white"><asp:Label ID="uname" runat="server"></asp:Label></h2>
                    
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
                        <div class="col-lg-12 col-md-6 weather">
                            <div class="event-post">
     <a class="weatherwidget-io" href="https://forecast7.com/en/13d0176d10/hassan/" data-label_1="HASSAN" data-label_2="WEATHER" data-theme="original" data-suncolor="#46ff2e" >HASSAN WEATHER</a>
<script>
    !function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = 'https://weatherwidget.io/js/widget.min.js'; fjs.parentNode.insertBefore(js, fjs); } }(document, 'script', 'weatherwidget-io-js');
</script>
                            </div>
                        </div>
                        <!--Blog Post End-->
                        <!--Blog Post Start-->
        <div class="col-lg-12 col-md-6 chatt">
    <div class="chat-box" style="max-width:900px;margin:auto;border:1px solid #ccc;border-radius:10px; height:400px; display: flex; flex-direction: column;">
        
        <!-- Header -->
        <div style="background:#007bff;color:#fff;padding:10px;">
            <h4 style="margin:0;">Live Chat</h4>
        </div>

        <!-- Scrollable chat messages -->
        <div id="chatMessages" style="flex: 1; overflow-y: auto; padding:10px;">
<asp:Repeater ID="rptChat" runat="server">
    <ItemTemplate>
        <div style='<%# Eval("Name").ToString() == "You" ? "text-align:right; padding:10px;" : "text-align:left; padding:10px;" %>'>
            <div style='display:inline-block; 
                        background:<%# Eval("Name").ToString() == "You" ? "#d1e7dd" : "#f8d7da" %>; 
                        padding:10px; 
                        border-radius:10px; 
                        max-width:70%;'>
                <strong><%# Eval("Name") %>:</strong> <%# Eval("MessageText") %><br />
                <small style="font-size:10px;color:#555;"><%# Eval("TimeSent", "{0:hh:mm tt}") %></small>
            </div>
        </div>
    </ItemTemplate>
</asp:Repeater>
        </div>

        <!-- Input area -->
        <div style="padding:10px; border-top:1px solid #ccc; display: flex; gap: 10px; align-items: center;">
            <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" Width="80%" placeholder="Type a message..." />
            <asp:Button ID="btnSend" runat="server" Text="Send" CssClass="btn btn-success" OnClick="btnSend_Click" />
        </div>
    </div>
</div>


               
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
                            <p><a target="_blank" href="#">CodeRed Solutions +91 6363364672</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <script async type='module' src='https://interfaces.zapier.com/assets/web-components/zapier-interfaces/zapier-interfaces.esm.js'></script>
<zapier-interfaces-chatbot-embed is-popup='true' chatbot-id='cmawgl9b80092979obhccbrfd'></zapier-interfaces-chatbot-embed>
        <!--Footer End-->
    </div>
        </form>
    <!--   JS Files Start  -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery-migrate-1.4.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/isotope.min.js"></script>
    <script src="js/custom.js"></script>
           <script src="
https://cdn.jsdelivr.net/npm/intro.js@7.0.1/intro.min.js
"></script>
       <script src="js/UserGuide.js"></script>
    <script>
        console.log("Page loaded");

        if (typeof startIntro !== "undefined") {
            if (!localStorage.getItem("introShown")) {
                console.log("startIntro is defined — starting intro");
                startIntro();
                localStorage.setItem("introShown", "true");
            } else {
                console.log("Intro already shown — skipping");
            }
        } else {
            console.error("startIntro is NOT defined");
        }
    </script>
</body>


</html>
