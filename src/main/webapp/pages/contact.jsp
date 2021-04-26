<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<div class="container-fluid">
<h1 class="text-center">Contact de votre agence</h1>
<hr>
 <div class="row">
  <iframe src="https://maps.google.com/maps?q=supisi%20tetouan&t=k&z=13&ie=UTF8&iwloc=&output=embed" width="100%" height="320" frameborder="0" style="border:0" allowfullscreen></iframe>
 </div>
	<div class="row text-center">
	  <div class="col-4 box1 pt-4">
        <a href="tel:+123456789"><i class="fas fa-phone fa-3x"></i>
        <h3 class="d-none d-lg-block d-xl-block">T&eacute;l&eacute;phone</h3>
        <p class="d-none d-lg-block d-xl-block">+212 5 12 34 56 78</p></a>
      </div>
      <div class="col-4 box2 pt-4">
        <a href=""><i class="fas fa-home fa-3x"></i>
        <h3 class="d-none d-lg-block d-xl-block">Adresse</h3>
        <p class="d-none d-lg-block d-xl-block">Avenue Abdelkhalek Torres, Tétouan 93000, Maroc</p></a>
      </div>
      <div class="col-4 box3 pt-4">
        <a href="mailto:test@test.com"><i class="fas fa-envelope fa-3x"></i>
        <h3 class="d-none d-lg-block d-xl-block">E-mail</h3>
        <p class="d-none d-lg-block d-xl-block">contact@agence.com</p></a>
      </div>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function () {
		  $("li.nav-item.active").removeClass("active");
		  $('#contact').addClass('active');
		});
</script>