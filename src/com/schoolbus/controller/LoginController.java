package com.schoolbus.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

import com.schoolbus.pojo.Login;
import com.schoolbus.pojo.Message;
import com.schoolbus.service.LoginService;
import com.schoolbus.service.MessageService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;
	@Autowired
	private MessageService messageService;
	
	/**
	 * 用户登录
	 */
	@RequestMapping("/login")
	public String login(HttpServletRequest request, HttpServletResponse response) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Login user = loginService.findByUname(username);
		String msg = "";
		if (user != null) {
			if (user.getPassWord().equals(password)) {
				request.getSession().setAttribute("user", user);
				return "forward:index.jsp";
			}
			else {
				msg = "用户名或密码错误";
			}
		}
		else if (user == null)
			msg = "用户不存在";
		request.setAttribute("msg", msg);
		return "forward:WEB-INF/jsp/login.jsp";
	}
	/**
	 * 退出登录
	 */
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		request.getSession().setAttribute("user", null);
		return "forward:index.jsp";
	}
	/**
	 * 跳转到登录页面
	 */
	@RequestMapping("/dispatcherLogin")
	public String dispatcherLogin() {
		return "login";
	}
	/**
	 * 跳转到注册页面
	 */
	@RequestMapping("/dispatcherRegister")
	public String dispatcherRegister() {
		return "register";
	}
	/**
	 * 用户注册
	 */
	@RequestMapping("/register")
	public String register(HttpServletRequest request) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String confirmPsw = request.getParameter("confirmPsw");
		Login user = new Login();
		user.setUserName(username);
		user.setPassWord(password);
		if (password.equals(confirmPsw))
			loginService.userRegister(user);
		return "/home";
	}
	/**
	 * 跳转到首页
	 */
	@RequestMapping("/dispatcherHome")
	public String dispatcherHome() {
		return "home";
	}
	/**
	 * 跳转到主页，传递通知列表
	 */
	@RequestMapping("/getMessageList")
	@ResponseBody
	public Map<String,Object> getMessageList(HttpServletRequest request, HttpServletResponse response) {
		Map<String,Object> json = new HashMap<>();
		List<Message> newsList = messageService.findAllNews();
		List<Message> helpList = messageService.findAllHelp();
		json.put("newsList", newsList);
		json.put("helpList", helpList);
		return json;
	}
}
