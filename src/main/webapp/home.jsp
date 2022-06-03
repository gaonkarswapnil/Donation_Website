<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
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
        .w3-table td,.w3-table th,.w3-table-all td,.w3-table-all th{
				padding:8px 8px;display:table-cell;text-align:left;vertical-align:top
        }
        .w3-table th:first-child,.w3-table td:first-child,.w3-table-all th:first-child,.w3-table-all td:first-child{padding-left:16px}
        #data{
            padding-top:28px;
            letter-spacing:4px;
            font-family:Montserrat, sans-serif;
            font-size:13px;
        }
    </style>

    <!-- Bootsrap -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
	
	<sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/charitylife"
        user="root" password=""
    />
    
    <sql:query var="listNGO"   dataSource="${myDS}">
        SELECT `NGO_NAME`,`MANAGER_NAME`,`ADDRESS`, `STATE`,`DISTRICT`,`PINCODE`,`DESCRIPTION`, `EMAIL`, `CONTACT_NO`,`FOOD_DONATION_FLAG`,`CLOTHES_DONATION_FLAG`,`MEDICINE_DONATION_FLAG`,`MONEY_DONATION_FLAG`,`IS_REVIEWED`,`NGO_ID` FROM `NGO_DETAILS` WHERE `IS_REVIEWED`=true;
    </sql:query>
    
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
  
                            <li><a class="is-active" href="home.jsp?username=<%=request.getParameter("username")%>"><span class="glyphicon glyphicon-home"></span>&nbsp; HOME</a></li>
                            <li class="has-child"><a href="donate.jsp"><span class="fa fa-inr"></span>&nbsp; DONATE</a>
  
                                <!-- <ul class="submenu">
                                    <li class="submenu-item"><a href="#">Donate Money </a></li>
                                    <li class="submenu-item"><a href="#">Donate Things</a></li>
                                </ul> -->
  
                            </li>
                            <li><a href="#" class="">List an NGO</a>
                            	<ul class="submenu">
                                    <li class="submenu-item"><a href="listanNGO.jsp?username=<%=request.getParameter("username")%>"><span class="glyphicon glyphicon-repeat"></span>&nbsp; Register</a></li>
                                    <li class="submenu-item"><a href="view.jsp"><span class="glyphicon glyphicon-gift"></span>&nbsp; View</a></li>
                                </ul>
                            </li>
                            <!---<li><a href="gallery.html">GALLERY</a></li>-->
                            <li><a href="#"><span class="fa fa-user"></span>&nbsp; <%=session.getAttribute("username")/*String name="Swapnil"; System.out.println(name);*/ %></a>
                                <ul class="submenu">
                                    <li class="submenu-item"><a href="viewDonations.jsp"><span class="glyphicon glyphicon-repeat"></span>&nbsp; Donation Made</a></li>
                                    <li class="submenu-item"><a href="RecievedDonations.jsp"><span class="glyphicon glyphicon-gift"></span>&nbsp; Donation Recieved</a></li>
                                    <li class="submenu-item"><a href="editProfile.jsp"><span class="glyphicon glyphicon-edit"></span>&nbsp; Edit Profile </a></li>
                                    <li class="submenu-item"><a href="logout.jsp"><span class="fa fa-power-off"></span>&nbsp; LOGOUT </a></li>
                                </ul>
                            </li>
                        </ul>
  
                    </div> <!-- /#navbar -->
  
                </div> <!-- /.container -->
                
            </div> <!-- /.navbar-main -->
        </nav>
    </header>


    
<!-- Main content -->


    <div id="homeCarousel" class="carousel slide" data-ride="carousel">

        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#homeCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#homeCarousel" data-slide-to="1"></li>
            <li data-target="#homeCarousel" data-slide-to="2"></li>
        </ol>

        <div class="carousel-inner" role="listbox">

            <div class="item active">

                <img src="images/slider/home-slider-1.jpg" alt="First image">

                <div class="container">

                    <div class="carousel-caption">

                        <h2 class="carousel-title bounceInDown animated slow">Because they need your help</h2>
                        <h4 class="carousel-subtitle bounceInUp animated slow ">Do not let them down</h4>
                        <a href="donate.jsp" class="btn btn-lg btn-secondary hidden-xs bounceInUp animated slow" >DONATE NOW</a>

                    </div> <!-- /.carousel-caption -->

                </div>

            </div> <!-- /.item -->

            <div class="item ">

                <img src="images/slider/home-slider-2.jpg" alt="Second image">

                <div class="container">

                    <div class="carousel-caption">

                        <h2 class="carousel-title bounceInDown animated slow">Together we can improve their lives</h2>
                        <h4 class="carousel-subtitle bounceInUp animated slow"> So let's do it !</h4>
                        <a href="donate.jsp" class="btn btn-lg btn-secondary hidden-xs bounceInUp animated" >DONATE NOW</a>

                    </div> <!-- /.carousel-caption -->

                </div>

            </div> <!-- /.item -->

            <div class="item ">

                <img src="images/slider/home-slider-3.jpg" alt="Third image">

                <div class="container">

                    <div class="carousel-caption">

                        <h2 class="carousel-title bounceInDown animated slow" >A penny is a lot of money, if you have not got a penny.</h2>
                        <h4 class="carousel-subtitle bounceInUp animated slow">You can make the diffrence !</h4>
                        <a href="donate.jsp" class="btn btn-lg btn-secondary hidden-xs bounceInUp animated slow">DONATE NOW</a>

                    </div> <!-- /.carousel-caption -->

                </div>
			</div> <!-- /.item -->


        </div>

        <a class="left carousel-control" href="#homeCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>

        <a class="right carousel-control" href="#homeCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>

    </div><!-- /.carousel -->

    <br>
    <table class="w3-table-all w3-xlarge" align="center" border="2">
        <tr>
            <th>
                <!-- <h4 align="center">NGO Details</h4> -->
                <center>NGO Details</center>
            </th>
            <th>
                <center>Total Donations</center>
            </th>
        </tr>
        
        <c:forEach var="ngo" items="${listNGO.rows}">
        <tr id='data'>
            <td>
                NGO Name: <b><u>${ngo.NGO_NAME}</u></b> <br>
                Head Name: ${ngo.MANAGER_NAME} <br>
                Description: ${ngo.DESCRIPTION} <br>
                Donation Accepted: 
                <c:if test="${ngo.FOOD_DONATION_FLAG}">Food,</c:if>
               <c:if test="${ngo.CLOTHES_DONATION_FLAG}">Clothes,</c:if>
               <c:if test="${ngo.MONEY_DONATION_FLAG}">Money,</c:if>
               <c:if test="${ngo.MEDICINE_DONATION_FLAG}">Medicine</c:if>
                <br>
                State: ${ngo.STATE} <br>
                District: ${ngo.DISTRICT} <br>
            </td>
            <td>
                Money: 5000Rs &emsp;&emsp;&emsp;
            </td>
        </tr>
        </c:forEach>
    </table>
    <br>
<!-- Main content -->

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
</body>
</html>