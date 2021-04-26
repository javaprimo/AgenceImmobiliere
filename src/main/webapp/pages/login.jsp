<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>

<div class="container">
    <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Connexion</div>
                <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Mot de passe oublié?</a></div>
            </div>

            <div style="padding-top:30px" class="panel-body">
                <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                <form id="loginform" class="form-horizontal" role="form" method="POST" action="?page=login">
                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input id="login" type="text" class="form-control" name="login" value="admin" placeholder="Login" />
                    </div>
                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input id="password" type="password" class="form-control" name="password" value="admin" placeholder="Mot de passe" />
                    </div>
                    <div style="margin-top:10px" class="form-group">
                        <div class="col-sm-12 controls">
                            <button id="btn-login" type="submit" class="btn btn-success">Se connecter</button>
                            <a id="btn-cancel" class="btn btn-default" href="?page=accueil"> Annuler</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
	$(document).ready(function () {
		  $("li.nav-item.active").removeClass("active");
		  $('#seconnecter').addClass('active');
		});
</script>