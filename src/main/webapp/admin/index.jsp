<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Charity Life</title>
    
    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Dosis:400,700' rel='stylesheet' type='text/css'>
    <style>
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
			#loginMain{
				color:#340926;
				letter-spacing:15px;
				font-weight:bolder;
				font-size:20;
				margin-top:50px;
			}
			#loginButton{
				/* background-color:#340926; */
				/* color:white; */
				border:none;
				width:100px;
				margin-top:15px;
			}
			#loginButton:hover{
                background-color:#340926;
				color:white;
			}
			input[type="email"], input[type="password"]{
				border:none;
                background:#f1f1f1;
                padding:15px;
			}
    </style>

    <!-- Bootsrap -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Font awesome -->
    <link rel="stylesheet" href="../assets/css/font-awesome.min.css">

    <!-- Owl carousel -->
    <link rel="stylesheet" href="../assets/css/owl.carousel.css">

    <!-- Template main Css -->
    <link rel="stylesheet" href="../assets/css/style.css">
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
  
                            <li><a class="is-active" href="#">&nbsp; Welcome To Admin section</a></li>
                        </ul>
  
                    </div> <!-- /#navbar -->
  
                </div> <!-- /.container -->
                
            </div> <!-- /.navbar-main -->
        </nav>
    </header>
    
	<!--Main Content-->

    <!-- <div class="page-heading text-center"> -->

		<div class="container zoomIn animated"> 
			<h1 class="page-title"><center>Admin Login</center><span class="title-under"></span></h1>
		</div>

	<!-- </div> -->

    <div class="container">
        <!--<h2 class="text-center" id="loginMain">LOGIN</h2>-->
        <hr>
        <form class="form-horizontal" action="../AdminLogin" method="POST">
            <div class="form-group">
                <label class="control-label col-sm-4" for="username">Email:</label>
                <div class="col-sm-4">
                    <input type="email" id="username" name="username" placeholder="Enter email" class="form-control" required>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-4" for="password">Password:</label>
                <div class="col-sm-4">
                    <input type="password" id="password" name="userpass" placeholder="Enter password" class="form-control" required>
                </div>
            </div>
            <div class="form-group text-center">
                <div class="col-sm-offset-4 col-sm-4">
                    <button type="submit" name="login" id="loginButton" class="btn btn-primary btn-md">Login</button>
                </div>
            </div>
            <div class="form-group">
                <div class="text-center">
                    <!-- <p>Don't have an account? <a href="#" id="signUp">Sign Up</a></p> -->
                </div>
            </div>
        </form>
    </div>


<!--Main Content-->

    <footer class="main-footer">

        <div class="footer-top">
            
        </div>


        <div class="footer-main">
            <div class="container">
                
                <div class="row">
                    <!--Social Link-->
                    <div class="col-md-4">

                        <div class="footer-col">

                            <h4 class="footer-title">Social Links<span class="title-under"></span> </h4>

                            <div class="footer-content">
                                
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
            <a href="index.jsp" data-toggle="tooltip" title="TO TOP">
                <span class="glyphicon glyphicon-chevron-up"></span>
            </a><br><br>
            <p>Designed and Developed by  <span class="glyphicon glyphicon-copyright-mark"></span><b>Gaonkar #PEACE</b></p>
        </div>
    
    </footer> <!-- main-footer -->
</body>
</html>