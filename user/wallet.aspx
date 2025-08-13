<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wallet.aspx.cs" Inherits="agri.user.wallet" %>

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
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="fas fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                   <ul class="navbar-nav mr-auto">
        <li class="nav-item"><a class="nav-link" href="UserDashboard.aspx">Home</a> </li>
        <li class="nav-item"><a class="nav-link shop" href="../shop/product.aspx">Shoping</a> </li>
           <li class="nav-item"><a class="nav-link rmc" href="rmc.aspx">RMC</a> </li>
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
                <h1>My Wallet</h1>
               
            </div>
        </section>
        <!--Inner Header End-->
        <!--Causes Start-->
   <form id="walletForm" onsubmit="return submitRecharge(event)">
    <section class="wf100 p80">
        <div class="container">
            <div class="row">
                <!-- Register Form -->

    <div class="col-lg-8">
        <div class="myaccount-form">
            <h3>Wallet Recharge</h3>
            <ul class="row">

                <li class="col-md-6">
                    <div class="input-group">
                        <input type="text" id="amount" class="form-control" placeholder="Amount"
                               pattern="^\d+(\.\d{1,2})?$" title="Enter a valid amount (e.g., 100 or 100.50)" required />
                    </div>
                </li>

                <li class="col-md-6">
                    <div class="input-group">
                        <input type="text" id="cardNumber" class="form-control" placeholder="Card Number" maxlength="16"
                               pattern="^\d{16}$" title="Card number must be exactly 16 digits" required />
                    </div>
                </li>

                <li class="col-md-6">
                    <div class="input-group">
                        <input type="month" id="expDate" class="form-control" required />
                    </div>
                </li>

                <li class="col-md-6">
                    <div class="input-group">
                        <input type="text" id="cvv" class="form-control" placeholder="CVV" maxlength="3"
                               pattern="^\d{3}$" title="CVV must be exactly 3 digits" required />
                    </div>
                </li>

                <li class="col-md-12">
                    <div class="input-group">
                        <input type="checkbox" id="chkAgree" required />&nbsp;
                        I agree to the <a href="#">Terms</a>
                    </div>
                </li>

                <li class="col-md-12">
                    <div class="input-group">
                        <input type="submit" class="reg" value="Recharge My Wallet" />
                    </div>
                </li>

            </ul>
        </div>
    </div>      
            <div class="col-lg-4" style="margin-top:10%">
<div class="login-box">
    <h3>Your Balance</h3>
    <asp:Label runat="server" CssClass="about-ecova" ID="walll"></asp:Label>
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
                            <p><a target="_blank" href="#">CodeRed Solutions +91 6363364672</a></p>
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

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script type="text/javascript">
    function submitRecharge(e) {
        e.preventDefault();

        // Let HTML5 validation handle field checks
        var form = document.getElementById("walletForm");
        if (!form.checkValidity()) {
            form.reportValidity(); // Trigger built-in validation message
            return false;
        }

        var amount = $("#amount").val().trim();
        var cardNumber = $("#cardNumber").val().trim();
        var expDate = $("#expDate").val().trim(); // Now in YYYY-MM format
        var cvv = $("#cvv").val().trim();
        var agree = $("#chkAgree").is(":checked");

        if (!agree) {
            Swal.fire("Please agree to the terms and conditions.");
            return false;
        }

        Swal.fire({
            title: 'Are you sure?',
            text: "You are about to recharge your wallet.",
            icon: 'question',
            showCancelButton: true,
            confirmButtonText: 'Yes, Recharge!',
            cancelButtonText: 'Cancel'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    type: "POST",
                    url: "wallet.aspx/SaveWalletRecharge",
                    contentType: "application/json; charset=utf-8",
                    data: JSON.stringify({
                        amount: amount,
                        cardNumber: cardNumber,
                        expDate: expDate,
                        cvv: cvv
                    }),
                    dataType: "json",
                    success: function (response) {
                        if (response.d === "success") {
                            Swal.fire('Success!', 'Your wallet has been recharged.', 'success').then(() => {
                                $("#walletForm")[0].reset();
                            });
                        } else {
                            Swal.fire('Error!', response.d, 'error');
                        }
                    },
                    error: function () {
                        Swal.fire('Error!', 'Server error occurred.', 'error');
                    }
                });
            }
        });

        return false;
    }
</script>

</html>