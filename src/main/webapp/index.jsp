<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html lang="en">
    <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="">
      <meta name="author" content="">
      <script src="css/jquery/jquery.js"></script>
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">
      
      <!-- Bootstrap core CSS -->
      <link href="css/bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <!-- Custom styles for this template -->
      <link href="css/agence-immobiliere.css" rel="stylesheet">
	  
	  <title>Agence Immobili&egrave;re T&eacute;touan</title>
    </head>
    <body>
        <!-- Navigation -->
        <jsp:include page="pages/header.jsp" />

        <!-- Page Content -->
        <%
        	String contentPage = (String)request.getParameter("page");
        	String contentPagePath = "pages/" + contentPage + ".jsp";

        	if(contentPage == null || contentPage.isEmpty()){
        		%>
                <jsp:include page="pages/accueil.jsp" />
                <%
        	}
        	else{
        		%>
        		<jsp:include page="<%= contentPagePath %>" />
        		<%
        	}
        %>

        <!-- Footer -->
        <jsp:include page="pages/footer.jsp" />
    </body>
</html>