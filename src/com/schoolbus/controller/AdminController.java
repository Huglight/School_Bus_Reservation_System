package com.schoolbus.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.schoolbus.pojo.Admin;
import com.schoolbus.pojo.Login;
import com.schoolbus.pojo.Message;
import com.schoolbus.pojo.Page;
import com.schoolbus.service.AdminService;
import com.schoolbus.service.MessageService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	@Autowired
	private MessageService messageService;

	/**
	 * 管理员登录
	 */
	@RequestMapping("/adminLogin")
	public String adminLogin(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		Admin admin = adminService.findByName(name);
		String msg = "";
		if (admin != null) {
			if (admin.getPassWord().equals(password)) {
				request.getSession().setAttribute("admin", admin);
				return "forward:/index.jsp";
			}
			else {
				msg = "用户名或密码错误";
			}
		}
		else if (admin == null)
			msg = "用户不存在";
		request.setAttribute("msg", msg);
		return "admin/login";
	}
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		request.getSession().setAttribute("admin", null);
		return "forward:/index.jsp";
	}
	/**
	 * 跳转到登录页面
	 */
	@RequestMapping("/dispatcherLogin")
	public String dispatcherLogin() {
		return "admin/login";
	}
	/**
	 * 新增通知
	 */
	@RequestMapping("/dispatcherNews")
	public String dispatcherNews() {
		return "admin/addNews";
	}
	/**
	 * 查看订单列表
	 */
	@RequestMapping("/dispatcherOrder")
	public String dispatcherOrder() {
		return "admin/orderList";
	}
	/**
	 * 查看建议列表
	 */
	@RequestMapping("/dispatcherSuggestion")
	public String dispatcherSuggestion(HttpServletRequest request) {
		List<Message> suggestionList = messageService.findAllSuggestion();
		String thisPageStr = request.getParameter("thispage");
		int thisPage = 1;
		if (thisPageStr != null)
			thisPage = Integer.parseInt(thisPageStr);
		Page page = new Page(thisPage, suggestionList);
		request.setAttribute("page", page);
		return "forward:/WEB-INF/jsp/admin/suggestionList.jsp";
	}
	/**
	 * 新增帮助
	 */
	@RequestMapping("/dispatcherHelp")
	public String dispatcherHelp() {
		return "admin/addHelp";
	}
	/**
	 * 修改班次
	 */
	@RequestMapping("/dispatcherSchedule")
	public String dispatcherSchedule() {
		return "admin/changeScd";
	}
	/**
	 * 跳转到用户信息
	 */
	@RequestMapping("/dispatcherInformation")
	public String dispatcherInformation() {
		return "admin/information";
	}
	/**
	 * 修改用户信息
	 */
	@RequestMapping("/changeInformation")
	public String changeInformation(HttpServletRequest request) {
		String nickname = request.getParameter("nickname");
		String sex = request.getParameter("sex");
		String realname = request.getParameter("realname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String qq = request.getParameter("qq");
		String remark = request.getParameter("remark");
		int id = ((Admin)request.getSession().getAttribute("admin")).getId();
		Admin admin = new Admin();
		admin.setNickname(nickname);
		admin.setSex(sex);
		admin.setRealname(realname);
		admin.setEmail(email);
		admin.setPhone(phone);
		admin.setQq(qq);
		admin.setRemark(remark);
		admin.setId(id);
		adminService.changeInformation(admin);
		Admin sessionAdmin = adminService.findById(id);
		request.getSession().setAttribute("admin", sessionAdmin);
		return "/admin/information";
	}
	/**
	 * 跳转到修改密码
	 */
	@RequestMapping("/dispatcherChangePsw")
	public String dispatcherChangePsw() {
		return "admin/changePsw";
	}
	/**
	 * 修改密码
	 */
	@RequestMapping("/changePassword")
	public String changePassword(HttpServletRequest request) {
		String newPsw = request.getParameter("newPsw");
		String confirmPsw = request.getParameter("confirmPsw");
		Admin admin = (Admin) request.getSession().getAttribute("admin");
		if (newPsw.equals(confirmPsw))
			adminService.changePassword(newPsw, admin);
		return "/home";
	}
	/**
	 * 增加通知
	 */
	@RequestMapping("/addNews")
	public String addNews(HttpServletRequest request, HttpServletResponse response) {
		String title = request.getParameter("title");
		String text = request.getParameter("text");
		String author = request.getParameter("author");
		String institute = request.getParameter("institute");
		String fillindate = request.getParameter("fillindate");
		Message msg = new Message();
		msg.setTitle(title);
		msg.setText(text);
		msg.setAuthor(author);
		msg.setInstitute(institute);
		msg.setFillindate(fillindate);
		msg.setType("news");
		boolean flag = messageService.insertMessage(msg);
		if (flag)
			return "/home";
		else
			return "forward:/admin/dispatcherNews";
	}
	@RequestMapping("/addHelp")
	public String addHelp(HttpServletRequest request, HttpServletResponse response) {
		String title = request.getParameter("title");
		String text = request.getParameter("text");
		String author = request.getParameter("author");
		String institute = request.getParameter("institute");
		String fillindate = request.getParameter("fillindate");
		Message msg = new Message();
		msg.setTitle(title);
		msg.setText(text);
		msg.setAuthor(author);
		msg.setInstitute(institute);
		msg.setFillindate(fillindate);
		msg.setType("help");
		boolean flag = messageService.insertMessage(msg);
		if (flag)
			return "/home";
		else
			return "forward:/admin/dispatcherHelp";
	}
	/**
	 * 根据id删除信息
	 */
	@RequestMapping("/deleteMsgById")
	public String deleteMsgById(int id, HttpServletRequest request) {
		messageService.deleteById(id);
		return "/home";
	}
	/**
	 * 编辑通知页面
	 */
	@RequestMapping("/dispatcherEditNews")
	public String dispatcherEditNews(int id, HttpServletRequest request) {
		Message news = messageService.findById(id);
		request.setAttribute("news", news);
		return "admin/editNews";
	}
	/**
	 * 编辑帮助页面
	 */
	@RequestMapping("/dispatcherEditHelp")
	public String dispatcherEditHelp(int id, HttpServletRequest request) {
		Message help = messageService.findById(id);
		request.setAttribute("help", help);
		return "admin/editHelp";
	}
	/**
	 * 编辑信息
	 */
	@RequestMapping("/editMsg")
	public String editMsg(HttpServletRequest request) {
		String title = request.getParameter("title");
		String text = request.getParameter("text");
		String author = request.getParameter("author");
		String institute = request.getParameter("institute");
		String fillindate = request.getParameter("fillindate");
		String id = request.getParameter("id");
		Message msg = new Message();
		msg.setTitle(title);
		msg.setText(text);
		msg.setAuthor(author);
		msg.setInstitute(institute);
		msg.setFillindate(fillindate);
		msg.setId(Integer.parseInt(id));
		boolean flag = messageService.updateMsg(msg);
		if (flag)
			return "/home";
		else
			return "forward:/admin/dispatcherHelp";
	}
}
