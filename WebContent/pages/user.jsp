<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList, model.User"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<div class="container-fluid">
	<ul class="nav nav-pills">
		<li><a href="Handler?pag=users&u=add">Adicionar User</a></li>
		<li><a href="Handler?pag=users&u=edit">Listar Users</a></li>
		<li><a href="Handler?pag=users&u=elim">Eliminar User</a></li>
	</ul>
	<div>
		<%
		if (request.getParameter("u") != null) {
			if (request.getParameter("u").equals("add")) {
				%><jsp:include page="../user/register_user.jsp" /><%
			} else if (request.getParameter("u").equals("edit")) {
				%><jsp:include page="../user/listing_user.jsp" /><%
			}else{
				%><jsp:include page="../user/delete_user.jsp" /><% 
			}
		}
		%>
	</div>
</div>	