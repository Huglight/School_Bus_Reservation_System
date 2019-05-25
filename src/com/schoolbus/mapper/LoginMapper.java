package com.schoolbus.mapper;

import org.apache.ibatis.annotations.Param;

import com.schoolbus.pojo.Login;

public interface LoginMapper {
	
	Login selectById(@Param("id")int id);
	
	Login selectByUname(@Param("uname")String uname);
	
	boolean updatePassword(@Param("password")String password, @Param("user")Login user);
	
	boolean updateInformation(@Param("user")Login user);
	
	boolean insertUser(@Param("user")Login user);
}
