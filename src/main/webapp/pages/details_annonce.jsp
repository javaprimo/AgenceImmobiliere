<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<%@page language="java" import="java.util.ArrayList"%>
<%@page language="java" import="java.sql.ResultSet"%>
<%@page language="java" import="java.util.List"%>
<%@page language="java" import="gestion.*"%>

  <div class="container">
    <div class="row">
      <div class="col-lg-9">
        <div class="card mt-4">
        <%
			String idAnnonce = request.getParameter("id");
			if(idAnnonce == null || idAnnonce.isEmpty())
				return;
			
        	AnnoncesRepository annoncesRepository = new AnnoncesRepository();
        	AnnonceDetails annonceDetails = annoncesRepository.getAnnonceDetailsById(idAnnonce);
            if(annonceDetails != null){
            	
            %>

          <img class="card-img-top img-fluid" src="<%=annonceDetails.getImageUrl() %>" alt="" />
          <div class="card-body">
            <h3 class="card-title"><%= annonceDetails.getTitre() %></h3>
            <h4>Prix <%= annonceDetails.getPrix() %> DH</h4>
            <div class="card card-outline-secondary my-4">
	          <div class="card-header">
	            Datails de l'annonce
	          </div>
	          <div class="card-body">
	            <p><%= annonceDetails.getDescription() %></p>
	            <hr>
	            <p>
		            <div class="row text-center">
		           	  <div class="col-4 box1 pt-4">
				        <a href="tel:+123456789"><i class="fas fa-phone fa-3x"></i>
				        <h3 class="d-none d-lg-block d-xl-block">Phone</h3>
				        <p class="d-none d-lg-block d-xl-block"><%= annonceDetails.getTelephone() %></p></a>
				      </div>
				      <div class="col-4 box2 pt-4">
				        <a href=""><i class="fas fa-home fa-3x"></i>
				        <h3 class="d-none d-lg-block d-xl-block">Addresse</h3>
				        <p class="d-none d-lg-block d-xl-block"><%= annonceDetails.getAdresse() %></p></a>
				      </div>
				      <div class="col-4 box3 pt-4">
				        <a href="mailto:test@test.com"><i class="fas fa-envelope fa-3x"></i>
				        <h3 class="d-none d-lg-block d-xl-block">E-mail</h3>
				        <p class="d-none d-lg-block d-xl-block"><%= annonceDetails.getEmail() %></p></a>
				      </div>
		           	</div>
	            </p>
	            <hr>
	          </div>
	        </div>
          </div>
          
          <%
          }
          %>
        </div>
      </div>
    </div>
  </div>
  