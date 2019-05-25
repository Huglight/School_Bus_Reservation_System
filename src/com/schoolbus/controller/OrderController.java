package com.schoolbus.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	@RequestMapping("/dispatcherOrder")
	public String dispatcherOrder(HttpServletRequest request, HttpServletResponse response) {
		return "order";
	}
}
