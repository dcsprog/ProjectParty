package services;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UserClient;


public class SUser implements Logic {

	public UserClient searchUserClient(int user_id) {
		
		for(UserClient uc : Logic.arUserClient) {
			if(uc.getUser_id() == user_id) return uc;
		}
		
		return null;
	}

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
