<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@page language="java" import="java.util.ArrayList"%>
<%@page language="java" import="java.sql.ResultSet"%>
<%@page language="java" import="java.util.List"%>
<%@page language="java" import="gestion.*"%>


<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                        <img class="d-block img-fluid top-slide" src="images/slide1.jpg" alt="First slide" >
                    </div>
                    <div class="carousel-item">
                        <img class="d-block img-fluid top-slide" src="images/slide2.jpg" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block img-fluid top-slide" src="images/slide3.jpg" alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <div class="row">
                <%
                AnnoncesRepository annoncesRepository = new AnnoncesRepository();
                List<Annonce> annoncesListe = annoncesRepository.getAllAnnoncesByType();
                for(Annonce annonce : annoncesListe){
                	%>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                          <a href="?page=details_annonce&id=<%=annonce.getIdAnnonce()%>"><img class="card-img-top" src="<%= annonce.getImageUrl() %>" alt=""></a>
                          <div class="card-body">
                            <h4 class="card-title">
                              <a href="?page=details_annonce&id=<%=annonce.getIdAnnonce()%>"><%= annonce.getTitre() %></a>
                            </h4>
                            <p class="card-text"><%= annonce.getDescription().substring(0, Math.min(annonce.getDescription().length(), 100)) %> ...</p>
                          </div>
                          <div class="card-footer">
                            <h5><%= annonce.getPrix() %> DH</h5>
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

<script type="text/javascript">
	$(document).ready(function () {
		  $("li.nav-item.active").removeClass("active");
		  $('#accueil').addClass('active');
		});
</script>