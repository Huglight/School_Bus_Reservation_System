package com.schoolbus.mapper;

import org.apache.ibatis.annotations.Param;

import com.schoolbus.pojo.Admin;

public interface AdminMapper {

	public Admin selectById(@Param("id")int id);
	
	public Admin selectByName(@Param("name")String name);
	
	public boolean insertAdmin(@Param("admin")Admin admin);
	
	public boolean updatePassword(@Param("password")String password, @Param("admin")Admin admin);
	
	public boolean updateInformation(@Param("admin")Admin admin);
}
