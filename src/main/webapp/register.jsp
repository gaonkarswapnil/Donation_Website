<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Charity Life</title>
    
    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Dosis:400,700' rel='stylesheet' type='text/css'>
    <style>
        body{
				position:relative;
			}
        #address{
				resize:none;	
			}
			input[type="textbox"], input[type=password], input[type=email], input[type=number], input[type=date], #address{
				border:none;
				background:#f1f1f1;
				padding:15px;
			}
			#infoText{
				color:#340926;
			}
			#signupButton{
				/* background:#340926; */
				color:white;
				border:none;
				width:100px;
				margin-top:15px;
				
			}
			#signupButton:hover{
				background-color:#340926;
				color:white;
			}
    </style>

    <!-- Bootsrap -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- Font awesome -->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">

    <!-- Owl carousel -->
    <link rel="stylesheet" href="assets/css/owl.carousel.css">

    <!-- Template main Css -->
    <link rel="stylesheet" href="assets/css/style.css">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<header class="main-header">
        <nav class="navbar navbar-static-top">
            <div class="navbar-main">
              
                <div class="container">
  
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
  
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
  
                        </button>
                    <!--
                        <a class="navbar-brand" href="index.html"><img src="assets/images/logo.png" alt="" width="60px" padding="10px"></a>
                    -->
                    </div>
  
                    <div id="navbar" class="navbar-collapse collapse pull-right">
  
                        <ul class="nav navbar-nav">
  
                            <li><a class="" href="index.html"><span class="glyphicon glyphicon-home"></span>&nbsp; HOME</a></li>
                            <li class="has-child"><a href="login.jsp"><span class="fa fa-inr"></span>&nbsp; DONATE</a>
  
                                <!-- <ul class="submenu">
                                    <li class="submenu-item"><a href="#">Donate Money </a></li>
                                    <li class="submenu-item"><a href="#">Donate Things </a></li>
                                </ul> -->
  
                            </li>
                            <li><a href="about.html" class="">ABOUT</a></li>
                            <!---<li><a href="gallery.html">GALLERY</a></li>-->
                            <li><a href="login.jsp" class="is-active"><span class="glyphicon glyphicon-log-in"></span>&nbsp; LOGIN</a>
                                <!-- <ul class="submenu">
                                    <li class="submenu-item"><a href="login.html"><span class="glyphicon glyphicon-log-in"></span>&nbsp; Donar Login </a></li>
                                    <li class="submenu-item"><a href="../NGO/login.html"><span class="glyphicon glyphicon-log-in"></span>&nbsp; NGO Login </a></li>
                                </ul> -->
                            </li>
  
                        </ul>
  
                    </div> <!-- /#navbar -->
  
                </div> <!-- /.container -->
                
            </div> <!-- /.navbar-main -->
        </nav>
    </header>


<!-- main Content -->


    <!-- <div class="page-heading text-center"> -->

        <div class="container zoomIn animated">
            <h1 class="page-title"><center>SIGNUP</center><span class="title-under"></span></h1>
        </div>

    <!-- </div>  -->
    <div class="container">
        <!-- <h2 class="text-center" id="mainSignup">SIGNUP</h2> -->
        <p class="text-center" id="infoText">Please fill in this form to create an account.</p>
        <hr>
        <form class="form-horizontal"  method="POST" action="RegisterServlet">
            <div class="form-group">
                <label class="control-label col-sm-4" for="firstname">Firstname:</label>
                <div class="col-sm-6">
                    <input type="textbox" class="form-control" id="firstname" name="firstname" placeholder="Enter firstname" required>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-4" for="lastname">Lastname:</label>
                <div class="col-sm-6">
                    <input type="textbox" class="form-control" id="lastname" name="lastname" placeholder="Enter lastname" required>
                </div>
            </div>
        <!-- 	<div class="form-group">
                <label class="control-label col-sm-4" for="dob">Birth Date:</label>
                <div class="col-sm-6">
                    <input type="date" id="dob" name="dob" class="form-control" required>
                </div>
            </div> -->
            <div class="form-group">
                <label class="control-label col-sm-4" for="address">Address:</label>
                <div class="col-sm-6">
                    <textarea id="address" name="address" placeholder="Enter address" class="form-control" rows="5" title ="Please enter Address with Pincode" required></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-4" for="state">State:</label>
                <div class="col-sm-6">
                    <input type="textbox" class="form-control" id="state" name="state" placeholder="Enter State" required>
                    <!-- <textarea id="address" name="address" placeholder="Enter address" class="form-control" rows="5" title ="Please enter Address with Pincode" required></textarea> -->
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-4" for="district">District:</label>
                <div class="col-sm-6">
                    <input type="textbox" class="form-control" id="district" name="district" placeholder="Enter District" required>
                    <!-- <textarea id="Disrict" name="address" placeholder="Enter address" class="form-control" rows="5" title ="Please enter Address with Pincode" required></textarea> -->
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-4" for="pincode">Pin-Code:</label>
                <div class="col-sm-6">
                    <input type="textbox" maxlength="6" id="pincode" placeholder="Enter Pin-Code" class="form-control" name="pincode" title ="Please enter your Pin-Code." required>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-4" for="emailId">Email:</label>
                <div class="col-sm-6">
                    <input type="email" id="emailid" name="emailid" placeholder="Enter email id" class="form-control" required>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-4" for="mobileno">Mobile No.:</label>
                <div class="col-sm-6">
                    <input type="textbox" maxlength="10" id="mobileno" placeholder="Enter mobile number" class="form-control" name="mobileno" title ="Please enter 10 digit mobileno." required>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-4" for="password">Password:</label>
                <div class="col-sm-6">
                    <input type="password"  class="form-control" placeholder="Enter password" name="password" id = "pass1" required>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-4" for="confirmpassword">Confirm Password:</label>
                <div class="col-sm-6">
                    <input type="password"  name="repassword" placeholder="Confirm password" id = "pass2" class="form-control" required onkeyup="checkPass(); return false;">		
                    <span id="confirmMessage" class="confirmMessage"></span>
                </div>
            </div>
            <div class="form-group text-center">
                 <div class="col-sm-offset-4 col-sm-6">
                     <button type="submit" class="btn btn-primary btn-md" id="signupButton" onclick="signup()">SIGN UP</button>
                 </div>
            </div>                
        </form>
    </div>



<!-- main Content -->
    <footer class="main-footer">

        <div class="footer-top">
            
        </div>

        <div class="footer-main">
            <div class="container">
                
                <div class="row">
                    <!--Social Link-->
                    <div class="col-md-4">

                        <div class="footer-col">

                            <h4 class="footer-title">Social Links <span class="title-under"></span></h4>

                            <div class="footer-content">
                                <!--Translate-->
                                <button type="button" class="btn btn-default btn-lg">
                                    <a href="#https://www.facebook.com/">
                                        <span class="fa fa-facebook"></span>
                                    </a>
                                </button>

                                <button type="button" class="btn btn-default btn-lg">
                                    <a href="#https://twitter.com/?lang=en">
                                        <span class="fa fa-twitter"></span>
                                    </a>
                                </button>
                                
                                <button type="button" class="btn btn-default btn-lg">
                                    <a href="#https://www.google.co.in/">
                                        <span class="fa fa-google"></span>
                                    </a>
                                </button>
                                
                                <button type="button" class="btn btn-default btn-lg">
                                    <a href="#https://in.linkedin.com/">
                                        <span class="fa fa-linkedin"></span>
                                    </a>
                                </button>

                            </div>  
                        </div>

                    </div>
                    <!--Social Link-->

                    <div class="col-md-4">

                    </div>

                    <!--Contact US-->
                    <div class="col-md-4">

                        <div class="footer-col">

                            <h4 class="footer-title">Contact us <span class="title-under"></span></h4>

                            <div class="footer-content">

                                <div class="footer-form">
                                    
                                    <div class="footer-form" >
                                        <p>
                                            <button type="button" class="btn btn-default btn-lg">
                                                <span class="glyphicon glyphicon-envelope"></span>
                                            </button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>gaonkarswapnil1@gmail.com</b>
                                        </p>
                                        <br>
                                        <br>
                                        <p>
                                            <button type="button" class="btn btn-default btn-lg">
                                                <span class="glyphicon glyphicon-earphone"></span>
                                            </button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>+91 9022695479</b>
                                        </p>
                                    
                                    </div>

                                </div>
                            </div>
                            
                        </div>

                    </div>
                    <!--Contact US-->
                    <div class="clearfix"></div>



                </div>
                
                
            </div>

            
        </div>

        <div class="footer-bottom" align="center">
            <a href="register.jsp" data-toggle="tooltip" title="TO TOP">
                <span class="glyphicon glyphicon-chevron-up"></span>
            </a><br><br>
            <p>Designed and Developed by  <span class="glyphicon glyphicon-copyright-mark"></span><b>Gaonkar #PEACE</b></p>
        </div>
    
    </footer> <!-- main-footer -->


    <script>
        function checkPass()
        {
            var pass1 = document.getElementById('pass1');
            var pass2 = document.getElementById('pass2');
            var message = document.getElementById('confirmMessage');
            var goodColor = "#66cc66";
            var badColor = "#ff6666";
            if(pass1.value == pass2.value){
                pass2.style.backgroundColor = goodColor;
                message.style.color = goodColor;
                message.innerHTML = "Passwords Match!"
            }else{
              
                pass2.style.backgroundColor = badColor;
                message.style.color = badColor;
                message.innerHTML = "Passwords Do Not Match!"
            }
        }  
    </script>
    <script>
        function signup(){
            alert("Registration done successfully!!!")
        }
    </script>
</body>
</html>