package com.schoolbus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.schoolbus.pojo.Message;

public interface MessageMapper {
	
	public boolean insertMessage(@Param("msg")Message msg);
	
	public Message selectById(@Param("id")int id);
	
	public List<Message> selectAllNews();
	
	public List<Message> selectAllHelp();
	
	public List<Message> selectAllSuggestion();
	
	public boolean deleteById(@Param("id")int id);
	
	public boolean updateMsg(@Param("msg")Message msg);
}
