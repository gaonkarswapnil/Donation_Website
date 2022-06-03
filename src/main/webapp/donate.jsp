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
        th, td {
		  border-bottom: 1px solid #ddd;
		}
		
		#acceptButton{
			/* background-color:#340926; */
			/* color:white; */
			border:none;
			width:100px;
			margin-top:15px;
		}
		#acceptButton:hover{
			background-color: green;
			color:white;
		}
		
		body{
				position:relative;
			}
        #address, #description, #money_text, #medicine_text, #food_text, #clothes_text{
				resize:none;	
			}
			input[type="textbox"], input[type=password], input[type=email], input[type=number], input[type=date], #address, #description, #money_text, #medicine_text, #food_text, #clothes_text{
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
				width:150px;
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
  
                            <li><a class="" href="home.jsp?username=<%=request.getParameter("username")%>"><span class="glyphicon glyphicon-home"></span>&nbsp; HOME</a></li>
                            <li class="has-child"><a class="is-active" href="donate.jsp"><span class="fa fa-inr"></span>&nbsp; DONATE</a>
  
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
	<!-- <form class="form-horizontal"  method="POST" action=""> -->
	<br>
    <h1 align='center'>Donate</h1>
    <br>  
	
	
		<!-- <div class="form-group">
			<label class="control-label col-sm-4" for="state">View data by State:</label>
			<div class="col-sm-6">
				<select name="state" id="state">
					<option value="all">All</option>
					<option value="maharashtra">Maharashtra</option>
					<option value="goa">Goa</option>
					<option value="delhi">Delhi</option>
					<option value="karnataka">Karnataka</option>
				</select>
				&emsp;&emsp;&emsp; <button type="submit" name="filter" id="filter" class="btn btn-primary btn-md"><span class="glyphicon glyphicon-filter"></span>&nbsp;Filter</button>
				
			</div>
		</div> -->
	<!-- </form> -->
	<hr>
	<table class="w3-table-all w3-xlarge" align="center" border="0">
        <tr>
            <th>
                <!-- <h4 align="center">NGO Details</h4> -->
                <center>NGO Details</center>
            </th>
            <th>
                <center> </center>
            </th>
        </tr>
        <c:forEach var="ngo" items="${listNGO.rows}">
        
        <tr id='data'>
        	
            <td>
               NGO Name: <b><u>${ngo.NGO_NAME} </u></b><br>
               <!-- NGO Name: <input type="text" name="ngo_name" value='${ngo.NGO_NAME}' readonly><br>
                Head Name: <input type="text" name="ngo_name" value='${ngo.MANAGER_NAME}' readonly> <br> -->
                Description: ${ngo.DESCRIPTION}<br>
                Donation Accepted: 
                <c:if test="${ngo.FOOD_DONATION_FLAG}">Food,</c:if>
               <c:if test="${ngo.CLOTHES_DONATION_FLAG}">Clothes,</c:if>
               <c:if test="${ngo.MONEY_DONATION_FLAG}">Money,</c:if>
               <c:if test="${ngo.MEDICINE_DONATION_FLAG}">Medicine</c:if>
                <br>
				State: ${ngo.STATE} <br>
                District: ${ngo.DISTRICT} <br>
                Email id: ${ngo.EMAIL} <br>
                Contact no: ${ngo.CONTACT_NO}
            </td>
            <td>
            	
	                <center>
						&emsp;&emsp;&emsp;<button type="submit" name="accept" id="acceptButton" class="btn btn-primary btn-md"><a href="donationForm.jsp?ngo_name=${ngo.NGO_NAME}">Donate</a></button> &emsp;&emsp;&emsp;<br>
					</center>
				
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
            <a href="donate.jsp" data-toggle="tooltip" title="TO TOP">
                <span class="glyphicon glyphicon-chevron-up"></span>
            </a><br><br>
            <p>Designed and Developed by  <span class="glyphicon glyphicon-copyright-mark"></span><b>Gaonkar #PEACE</b></p>
        </div>
    
    </footer> <!-- main-footer -->
    <!-- </form> -->
</body>
</html>