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
			#PasswordButton{
				/* background:#340926; */
				color:white;
				border:none;
				/* width:100px; */
				margin-top:15px;
				
			}
			#PasswordButton:hover{
				background-color:#340926;
				color:white;
			}
    </style>
    <!-- Bootsrap -->
    <!-- <link rel="stylesheet" href="assets/css/bootstrap.min.css"> -->
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
	
	<sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/charitylife"
        user="root" password=""
    />
	
	<sql:query var="donation"   dataSource="${myDS}">
        SELECT `DONATION_ID`, `DONAR_FIRSTNAME`, `DONAR_LASTNAME`, `DONAR_EMAIL`, `NGO_NAME`, `ADDRESS`, `STATE`, `DISTRICT`, `PINCODE`, `FOOD_DONATION_FLAG`, `CLOTHES_DONATION_FLAG`, `MEDICINE_DONATION_FLAG`, `MONEY_DONATION_FLAG`, `FOOD_DONATION_TEXT`, `CLOTHES_DONATION_TEXT`, `MEDICINE_DONATION_TEXT`, `MONEY_DONATION_TEXT`,  `DONATION_DATE`, `INVOICE_NO` FROM `DONATIONS` WHERE `INVOICE_NO`=<%=request.getParameter("invoice_no") %>; 
    </sql:query>
	
	<%-- out.println(${donate.DONAR_FIRSTNAME});
	out.println(${donate.DONAR_LASTNAME});
	out.println(${donate.DONAR_EMAIL});
	out.println(${donate.NGO_NAME});
	out.println(${donate.ADDRESS});
	out.println(${donate.STATE});
	out.println(${donate.DISTRICT});
	out.println(${donate.PINCODE});
	out.println(${donate.FOOD_DONATION_FLAG});
	out.println(${donate.CLOTHES_DONATION_FLAG});
	out.println(${donate.MEDICINE_DONATION_FLAG});
	out.println(${donate.MONEY_DONATION_FLAG});
	out.println(${donate.FOOD_DONATION_TEXT});
	out.println(${donate.CLOTHES_DONATION_TEXT});
	out.println(${donate.MEDICINE_DONATION_TEXT});
	out.println(${donate.MONEY_DONATION_TEXT});
	out.println(${donate.DONATION_DATE});
	out.println(${donate.INVOICE_NO});
	out.println(<%=request.getParameter("invoice_no") %>); --%>
	
	<%-- <% out.println("SELECT `DONATION_ID`, `DONAR_FIRSTNAME`, `DONAR_LASTNAME`, `DONAR_EMAIL`, `NGO_NAME`, `ADDRESS`, `STATE`, `DISTRICT`, `PINCODE`, `FOOD_DONATION_FLAG`, `CLOTHES_DONATION_FLAG`, `MEDICINE_DONATION_FLAG`, `MONEY_DONATION_FLAG`, `FOOD_DONATION_TEXT`, `CLOTHES_DONATION_TEXT`, `MEDICINE_DONATION_TEXT`, `MONEY_DONATION_TEXT`,  `DONATION_DATE`, `INVOICE_NO` FROM `DONATIONS` WHERE `INVOICE_NO`="+request.getParameter("invoice_no")); %> --%>
	
	
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
                            <li><a class="is-active" href="#"><span class="fa fa-user"></span>&nbsp; <%=session.getAttribute("username") %></a>
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
	<!-- main content -->
	
	
	
	<!-- <div class="page-heading text-center"> -->

        <div class="container zoomIn animated">
            <h1 class="page-title"><center>Reciept</center><span class="title-under"></span></h1>
        </div>

    <!-- </div> -->

	<div class="container">
		<hr>
		<c:forEach var="donate" items="${donation.rows}">
		<form class="form-horizontal"  method="POST">
			<div class="form-group">
				<label class="control-label col-sm-5" for="class">Name:</label>
				<div class="col-sm-6">
					${donate.DONAR_FIRSTNAME} ${donate.DONAR_LASTNAME}
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-5" for="class">NGO Name:</label>
				<div class="col-sm-6">
					<input type="textbox" value='${donate.NGO_NAME}' readonly>				
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-5" for="class">Date:</label>
				<div class="col-sm-6">
					<input type="textbox" value='${donate.DONATION_DATE}' readonly>				
				</div>
			</div>
			
			<div class="form-group">
				<center>
					<label for="class">Donations</label>
				</center>
			</div>
			
               
               
            <c:if test="${donate.MONEY_DONATION_FLAG}">  
				<div class="form-group">
					<label class="control-label col-sm-5" for="class">Money</label>
					<div class="col-sm-6">
						<input type="textbox" value='${donate.MONEY_DONATION_TEXT}' readonly>					
					</div>
				</div>
			</c:if>
			
			<c:if test="${donate.MEDICINE_DONATION_FLAG}">
				<div class="form-group">
					<label class="control-label col-sm-5" for="class">Medicine</label>
					<div class="col-sm-6">
						<!-- <input type="textbox" value="Covishield" readonly>-->
						<textarea id="address" name="address" placeholder="Enter address" class="form-control" rows="5" title ="Please enter Address with Pincode" readonly>${donate.MEDICINE_DONATION_TEXT}</textarea>
					</div>
				</div>
			</c:if>
			
			<c:if test="${donate.FOOD_DONATION_FLAG}">
				<div class="form-group">
					<label class="control-label col-sm-5" for="class">Food</label>
					<div class="col-sm-6">
						<!-- <input type="textbox" value="Covishield" readonly>-->
						<textarea id="address" name="address" placeholder="Enter address" class="form-control" rows="5" title ="Please enter Address with Pincode" readonly>${donate.FOOD_DONATION_TEXT}</textarea>
					</div>
				</div>
			</c:if>
			
			<c:if test="${donate.CLOTHES_DONATION_FLAG}">
				<div class="form-group">
					<label class="control-label col-sm-5" for="class">Clothes</label>
					<div class="col-sm-6">
						<!-- <input type="textbox" value="Covishield" readonly>-->
						<textarea id="address" name="address" placeholder="Enter address" class="form-control" rows="5" title ="Please enter Address with Pincode" readonly>${donate.CLOTHES_DONATION_TEXT}</textarea>
					</div>
				</div>
			</c:if>
		
			<div class="form-group text-center">
				 <div class="col-sm-offset-4 col-sm-5">
					<button type="submit" class="btn btn-primary btn-md" id="signupButton" name="ok"><a href="home.jsp">OK</a></button>
					<button type="submit" class="btn btn-primary btn-md" onclick="printFunc()" id="signupButton">Print</button>
				 </div>
			</div>
		
		</form>		
		</c:forEach>	
	</div>
	
	
	<!-- main content -->	
	
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
            <a href="invoice.jsp" data-toggle="tooltip" title="TO TOP">
                <span class="glyphicon glyphicon-chevron-up"></span>
            </a><br><br>
            <p>Designed and Developed by  <span class="glyphicon glyphicon-copyright-mark"></span><b>Gaonkar #PEACE</b></p>
        </div>
    
    </footer> <!-- main-footer -->
    
    <script>
	    function printFunc(){
			window.print();
		}
    </script>
    
 
	
	
</body>
</html>