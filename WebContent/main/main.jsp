<main>
	<% 
		if(request.getParameter("pag") != null){
			if(request.getParameter("pag").equals("user")){
				 %> <jsp:include page="../page/user.jsp" /> <%
			}else if(request.getParameter("pag").equals("party")){
				 %> <jsp:include page="../page/party.jsp" /> <%
			}else if(request.getParameter("pag").equals("service")){
				 %> <jsp:include page="../page/service.jsp" /> <%
			}else if(request.getParameter("pag").equals("post")){
				 %> <jsp:include page="../page/post.jsp" /> <%
			}else if(request.getParameter("pag").equals("friend")){
				 %> <jsp:include page="../page/friend.jsp" /> <%
			}
		}
	  %>
</main>