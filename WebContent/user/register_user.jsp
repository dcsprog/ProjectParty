<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<div class="modal-dialog modal-lg" id="regist" >
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h4 class="modal-title">Creat Acount</h4>
		</div>
		<form role="form" method="POST" action="index">
			<div class="modal-body">
				<div class="form-group" style="display: none;" id="form_nick">
				  	<label>Nick</label>
				    <input type="text" class="form-control" id="ip_nick" name="ip_nick" placeholder="Nick" required/>
				</div>
				
				<div class="form-group">
				  	<label>Name</label>
				    <input type="text" class="form-control" id="ip_name" name="ip_name" placeholder="Name" required/>
				</div>
	
					<div class="form-group" style="display: none;" id="form_birth">
					  	<label>Data nascimento</label>
					    <input type="date" class="form-control" id="ip_birth" name="ip_birth" value="1995-04-25" required/>
					</div>
						
					<div class="form-group">
						<label>Contact</label>
					    <input type="text" class="form-control" id="ip_contact" name="ip_contact" pattern=".{9}" oninput="verificarContato()" placeholder="Contact" required/>	
						<label class="label label-danger" id="lb_contact" style="display: none">Apenas numeros</label>
					</div>
						
					<div class="form-group">
					    <label>Email</label>
					    <input type="email" class="form-control" id="ip_email" name="ip_email" placeholder="exemple@example.com" pattern=".{1,}@.{3,}..{1,}" required/>
				    </div>
					    
				    <div class="form-group">
					    <label>Password</label>
					    <input type="password" class="form-control" id="ip_password" name="ip_password" placeholder="Password" required/>
					</div>
						
					<div class="form-group">
					    <label>Re-Password</label>
					    <input type="password" class="form-control" id="ip_repassword" name="ip_repassword" placeholder="Re-Password" oninput="vericarPassword()" required/>
					    <label class="label label-danger" id="lb_repassword" style="display: none">Password don´t macth</label>
					</div>
					
					<div class="form-group" style="display: none;" id ="form_service">
					    <label>Tipo de Servico</label>
					    <input type="text" class="form-control" id="ip_typeservice" name="ip_typeservice" placeholder="Service" required/>
					</div>
					
					<div class="modal-footer">
						<input type="submit" class="btn btn-warning" value="Regist" />  
				    	<input type="hidden" name="logica" id="logica" value="SUser"/>
						<input type="hidden" name="action" id="action" value="regist"/>
					</div>
			</div>
		</form>
	</div>
</div> 