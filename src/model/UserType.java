package model;

public class UserType {

	private int user_type_id;
	private String user_type;
	
	public UserType() {
		super();
	}
	
	public UserType(int user_type_id, String user_type) {
		super();
		this.user_type_id = user_type_id;
		this.user_type = user_type;
	}

	public int getUser_type_id() {
		return user_type_id;
	}

	public void setUser_type_id(int user_type_id) {
		this.user_type_id = user_type_id;
	}

	public String getUser_type() {
		return user_type;
	}

	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}

}
