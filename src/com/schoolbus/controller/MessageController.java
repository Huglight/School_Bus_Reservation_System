package com.schoolbus.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.schoolbus.pojo.Login;
import com.schoolbus.pojo.Message;
import com.schoolbus.pojo.Page;
import com.schoolbus.service.MessageService;

@Controller
@RequestMapping("/message")
public class MessageController {
	
	@Autowired
	MessageService messageService;

	/**
	 * 跳转到提交建议
	 */
	@RequestMapping("/dispatcherSuggestion")
	public String dispatcherSuggestion() {
		return "message/addSuggestion";
	}
	/**
	 * 提交建议
	 */
	@RequestMapping("/addSuggestion")
	public String addSuggestion(HttpServletRequest request) {
		String text = request.getParameter("text");
		String fillindate = request.getParameter("fillindate");
		Login user = (Login) request.getSession().getAttribute("user");
		String author = user == null ? null : user.getUserName();
		Message msg = new Message();
		msg.setText(text);
		msg.setFillindate(fillindate);
		msg.setAuthor(author);
		msg.setType("suggestion");
		messageService.insertMessage(msg);
		return "/home";
	}
	/**
	 * 跳转到班次查询
	 */
	@RequestMapping("/dispatcherSchedule")
	public String dispatcherSchedule() {
		return "message/schedule";
	}
	/**
	 * 通知列表页面
	 */
	@RequestMapping("/dispatcherNewsList")
	public String dispatcherNewsList(HttpServletRequest request) {
		List<Message> newsList = messageService.findAllNews();
		String thisPageStr = request.getParameter("thispage");
		int thisPage = 1;
		if (thisPageStr != null)
			thisPage = Integer.parseInt(thisPageStr);
		Page page = new Page(thisPage, newsList);
		request.setAttribute("page", page);
		return "forward:/WEB-INF/jsp/message/newsList.jsp";
	}
	/**
	 * 帮助列表页面
	 */
	@RequestMapping("/dispatcherHelpList")
	public String dispatcherHelpList(HttpServletRequest request) {
		List<Message> helpList = messageService.findAllHelp();
		String thisPageStr = request.getParameter("thispage");
		int thisPage = 1;
		if (thisPageStr != null)
			thisPage = Integer.parseInt(thisPageStr);
		Page page = new Page(thisPage, helpList);
		request.setAttribute("page", page);
		return "forward:/WEB-INF/jsp/message/helpList.jsp";
	}
	/**
	 * 根据id查询通知
	 */
	@RequestMapping("/findNewsById")
	public String findNewsById(int id, HttpServletRequest request) {
		Message news = messageService.findById(id);
		request.setAttribute("news", news);
		return "message/news";
	}
	/**
	 * 根据id查询帮助
	 */
	@RequestMapping("/findHelpById")
	public String findHelpById(int id, HttpServletRequest request) {
		Message help = messageService.findById(id);
		request.setAttribute("help", help);
		return "message/help";
	}
	/**
	 * 根据id查询建议
	 */
	@RequestMapping("/findSuggestionById")
	public String findSuggestionById(int id, HttpServletRequest request) {
		Message suggestion = messageService.findById(id);
		request.setAttribute("suggestion", suggestion);
		return "message/suggestion";
	}
}
