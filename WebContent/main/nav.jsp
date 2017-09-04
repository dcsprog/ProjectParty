<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<nav class="navbar navbar-default navbar-static-top">
	<div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">ApParty</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
      <%     
      	 HttpSession sessao = request.getSession(true);
    		if(sessao.getAttribute("user_id")== null){%>
    			<li class="dropdown">
    	          <a>
    	          	<button class="btn btn-default" data-toggle="modal" data-target="#Login">Login </button>
    	          </a>
    	        </li>
    		<%}else{%>
	    			<li class="dropdown">
					<a>
						<form method="POST" action="index">
							<input type="hidden" name="logic" value="login">
							<input type="hidden" name="action" value="logout">
							<input type="submit" class="btn btn-default" name="sair" value="Logout">
						</form>
					</a>
				</li>
			</ul>
    	<%}%>
    </div>
  </div>
</nav>


<div id="Login" class="modal fade" role="dialog"> <!--  PARA FAZER O LOGIN -->
	<div class="modal-dialog modal-sm" id="ola" style="display: block;">
		<div class="modal-content">
			<div class="modal-header" id="modal-header" style="display: block;">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title" style="display: block" id="headerLogin">Login</h4>
				<h4 class="modal-title" style="display: none" id="headertypeAcount">Type Acount</h4>
			</div>
			<div id="typeAcount" style="display: none; margin-top: 10px; margin-bottom: 10px;" class="text-center">
				<a class="btn btn-default" onclick="activeNormal()" style="margin-rigth: 10px;">Normal</a>
				<a class="btn btn-danger" onclick="activeProfessional()">Professional</a>
			</div>
				<div id="formLogin" style="display: block">
				<div class="modal-body">
					<form role="form" method="POST" action="index">
						
							<div class="form-group">
								<label>Email
									<input class="form-control" type="email" name="ip_loginEmail" placeholder="Email">
								</label>
							</div>
							<div class="form-group">
								<label>Password
									<input class="form-control" type="password" name="ip_LoginPassword" placeholder="Password">
								</label>
							</div>
							<a href="user/register_user.jsp"> Creat Acount? </a>
							<div class="modal-footer">
								<input type="submit" class="btn btn-success"  value="Login">
								<input type="hidden" name="action" id="action" value="login">
						    	<input type="hidden" name="logica" id="logica" value="SUser">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		
</div>