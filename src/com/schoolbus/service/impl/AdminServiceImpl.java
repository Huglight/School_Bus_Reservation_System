package com.schoolbus.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.schoolbus.mapper.AdminMapper;
import com.schoolbus.pojo.Admin;
import com.schoolbus.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminMapper adminMapper;
	
	public Admin findById(int id) {
		try {
			Admin admin = adminMapper.selectById(id);
			return admin;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	@Override
	public boolean adminRegister(Admin admin) {
		try {
			boolean flag = adminMapper.insertAdmin(admin);
			return flag;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	@Override
	public boolean changePassword(String password, Admin admin) {
		try {
			boolean flag = adminMapper.updatePassword(password, admin);
			return flag;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	@Override
	public boolean changeInformation(Admin admin) {
		try {
			boolean flag = adminMapper.updateInformation(admin);
			return flag;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	public Admin findByName(String name) {
		try {
			Admin admin = adminMapper.selectByName(name);
			return admin;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
