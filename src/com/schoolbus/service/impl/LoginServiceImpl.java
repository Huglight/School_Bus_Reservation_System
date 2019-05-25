package com.schoolbus.service.impl;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;

import com.schoolbus.mapper.LoginMapper;
import com.schoolbus.pojo.Login;
import com.schoolbus.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	private LoginMapper loginmapper;
	
	@Override
	public boolean changeInformation(Login user) {
		try {
			boolean flag = loginmapper.updateInformation(user);
			return flag;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	@Override
	public boolean changePassword(String password, Login user) {
		try {
			boolean flag = loginmapper.updatePassword(password, user);
			return flag;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	@Override
	public Login findById(int id) {
		try {
			Login user = loginmapper.selectById(id);
			return user;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	@Override
	public boolean userRegister(Login user) {
		try {
			boolean flag = loginmapper.insertUser(user);
			return flag;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	@Override
	public Login findByUname(String uname) {
		try {
			Login user = loginmapper.selectByUname(uname);
			return user;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
