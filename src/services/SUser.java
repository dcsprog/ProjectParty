package services;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Status;
import model.UserClient;
import model.UserType;


public class SUser implements Logic {

	public UserClient searchUserClient(int user_id) {
		
		for(UserClient uc : Logic.arUserClient) {
			if(uc.getUser_id() == user_id) return uc;
		}
		
		return null;
	}
	
	//registarUSer
	public void addUser(UserType userType, String user_name, String user_email, String user_password,
			String user_contact, Status user_status, String user_nick, String user_birth, String user_avatar) {
		Logic.arUserClient.add(new UserClient(Logic.arUserClient.size(),userType,user_name, user_email, 
				user_password, user_contact, user_status, user_nick, user_birth, user_avatar));
		
	}
	
	//eliminarUser
	public void deleteUser(int user_id) {
		for(UserClient uc: Logic.arUserClient) {
			if(uc.getUser_id() == user_id) {
				Logic.arUserClient.remove(Logic.arUserClient.get(user_id));
			}
		}
	}
	
	

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse res) throws Exception {

		
		if(req.getParameter("acao").equals("register_user")){
			UserType a = new UserType(1,"prof");
			Status st = new Status(1, "m" , null);
			addUser( a,
					req.getParameter("user_name"), 
					req.getParameter("user_email"),
					req.getParameter("user_password"),
					req.getParameter("user_contact"),
					st,
					req.getParameter("user_nick"),
					req.getParameter("user_birth"),
					req.getParameter("user_avatar"));
			
			return "/index.jsp?pag=users";
				
		}else if(req.getParameter("acao").equals("elimUser")) {
			deleteUser(Integer.parseInt(req.getParameter("user_id")));
			
			req.setAttribute("listaUsers", Logic.arUserClient);
			return "/index.jsp?pag=users";
		}
		
		return null;
	}

}
