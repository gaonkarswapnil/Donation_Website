<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% session.invalidate(); %>
	<script>
	function preventBack() {
        window.history.backword(); 
    }
      
    setTimeout("preventBack()", 0);
      
    window.onunload = function () { null };
		alert("You have been successfully logout!!!!", window.location="index.jsp");
		
	</script>
	
</body>
</html>