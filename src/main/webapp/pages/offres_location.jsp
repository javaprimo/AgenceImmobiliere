<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@page language="java" import="java.util.ArrayList"%>
<%@page language="java" import="java.sql.ResultSet"%>
<%@page language="java" import="java.util.List"%>
<%@page language="java" import="gestion.*"%>


<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="row">
                <%
                AnnoncesRepository annoncesRepository = new AnnoncesRepository();
                List<Annonce> annoncesLocationListe = annoncesRepository.getAnnoncesByType(ConstantData.TypeLocation);
                for(Annonce annonce : annoncesLocationListe){
                	%>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                          <a href="?page=details_annonce&id=<%=annonce.getIdAnnonce()%>"><img class="card-img-top" src="<%=annonce.getImageUrl() %>" alt=""></a>
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
		  $('#offreslocation').addClass('active');
		});
</script>