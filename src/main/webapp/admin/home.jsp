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

    <!-- Bootsrap -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- Font awesome -->
    <link rel="stylesheet" href="../assets/css/font-awesome.min.css">

    <!-- Owl carousel -->
    <link rel="stylesheet" href="../assets/css/owl.carousel.css">

    <!-- Template main Css -->
    <link rel="stylesheet" href="../assets/css/style.css">


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
  
                            <li><a class="is-active" href="home.jsp"><span class="glyphicon glyphicon-home"></span>&nbsp; HOME</a></li>
                            <li class="has-child"><a href="review.jsp"><span class="glyphicon glyphicon-ok"></span>&nbsp; Review</a>
  
                                <!-- <ul class="submenu">
                                    <li class="submenu-item"><a href="addngo.html"> <span class="fa fa-plus"></span>&nbsp;&nbsp; ADD</a></li>
                                    <li class="submenu-item"><a href="#"> <span class="fa fa-street-view"></span>&nbsp;&nbsp; View Details</a></li>
                                </ul> -->
  
                            </li> 
                            <li><a href="#"><span class="fa fa-eye"></span>&nbsp;&nbsp;VIEW</a>
                                <ul class="submenu">
                                    <li class="submenu-item"><a href="viewMembers.jsp"><span class="fa fa-user"></span>&nbsp; Members </a></li>
                                    <li class="submenu-item"><a href="viewNGO.jsp"><span class="fa fa-rebel"></span>&nbsp; NGO </a></li>
                                </ul>
                            </li>
                            <!---<li><a href="gallery.html">GALLERY</a></li>-->
                            <li><a href="logout.jsp"><span class="glyphicon glyphicon-off"></span>&nbsp; LOGOUT</a>
                                <!-- <ul class="submenu">
                                    <li class="submenu-item"><a href="Donar/login.html"><span class="glyphicon glyphicon-log-in"></span>&nbsp; Donar Login </a></li>
                                    <li class="submenu-item"><a href="NGO/login.html"><span class="glyphicon glyphicon-log-in"></span>&nbsp; NGO Login </a></li>
                                </ul> -->
                            </li>
  
                        </ul>
  
                    </div> <!-- /#navbar -->
  
                </div> <!-- /.container -->
                
            </div> <!-- /.navbar-main -->
        </nav>
    </header>


    

    <!-- main Content -->

    <br>
    <h1>Hello</h1>
    <br> 

    <div class="container" id="googleMap" style="height:400px"></div>


    <br>


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
            <a href="home.jsp" data-toggle="tooltip" title="TO TOP">
                <span class="glyphicon glyphicon-chevron-up"></span>
            </a><br><br>
            <p>Designed and Developed by  <span class="glyphicon glyphicon-copyright-mark"></span><b>Gaonkar #PEACE</b></p>
        </div>
    
    </footer> <!-- main-footer -->
    
    <script>
        function myMap() {
        var myCenter = new google.maps.LatLng(19.1232, 72.8361);
        var mapProp = {center:myCenter, zoom:18, scrollwheel:false, draggable:false, mapTypeId:google.maps.MapTypeId.ROADMAP};
        var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
        var marker = new google.maps.Marker({position:myCenter});
        marker.setMap(map);
        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCg3AxFJTp-rgSuXzi6EyqV1dQpjn8v2wo&callback=myMap"></script>
</body>
</html>