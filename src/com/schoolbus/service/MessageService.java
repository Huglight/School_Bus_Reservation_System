package com.schoolbus.service;

import java.util.List;

import com.schoolbus.pojo.Message;

public interface MessageService {

	public boolean insertMessage(Message msg);
	
	public Message findById(int id);
	
	public List<Message> findAllNews();
	
	public List<Message> findAllHelp();
	
	public List<Message> findAllSuggestion();
	
	public boolean deleteById(int id);
	
	public boolean updateMsg(Message msg);
}
