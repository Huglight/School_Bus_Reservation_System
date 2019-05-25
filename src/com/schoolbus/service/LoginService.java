package com.schoolbus.service;

import com.schoolbus.pojo.Login;

public interface LoginService {

	public Login findById(int id);
	
	public Login findByUname(String uname);
	
	public boolean changePassword(String password, Login user);
	
	public boolean changeInformation(Login user);
	
	public boolean userRegister(Login user);
}
