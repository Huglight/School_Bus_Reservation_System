package com.schoolbus.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.schoolbus.pojo.Login;
import com.schoolbus.service.LoginService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private LoginService loginService;
	
	/**
	 * 用户信息页面
	 */
	@RequestMapping("/dispatcherInformation")
	public String dispatcherInformation() {
		return "user/information";
	}
	@RequestMapping("/changeInformation")
	public String changeInformation(HttpServletRequest request) {
		String nickname = request.getParameter("nickname");
		String sex = request.getParameter("sex");
		String realname = request.getParameter("realname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String qq = request.getParameter("qq");
		String remark = request.getParameter("remark");
		int id = ((Login)request.getSession().getAttribute("user")).getId();
		Login user = new Login();
		user.setNickname(nickname);
		user.setSex(sex);
		user.setRealname(realname);
		user.setEmail(email);
		user.setPhone(phone);
		user.setQq(qq);
		user.setRemark(remark);
		user.setId(id);
		loginService.changeInformation(user);
		Login login = loginService.findById(id);
		request.getSession().setAttribute("user", login);
		return "/user/information";
	}
	/**
	 * 修改密码页面
	 */
	@RequestMapping("/dispatcherChangePsw")
	public String dispatcherChangePsw() {
		return "user/changePsw";
	}
	/**
	 * 修改密码
	 */
	@RequestMapping("/changePassword")
	public String changePassword(HttpServletRequest request) {
		String newPsw = request.getParameter("newPsw");
		String confirmPsw = request.getParameter("confirmPsw");
		Login user = (Login) request.getSession().getAttribute("user");
		if (newPsw.equals(confirmPsw))
			loginService.changePassword(newPsw, user);
		return "/home";
	}
	/**
	 *个人订单
	 */
	@RequestMapping("/dispatcherMyOrder")
	public String dispatcherMyOrder() {
		return "user/myOrder";
	}
}
