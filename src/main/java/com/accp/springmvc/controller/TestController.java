package com.accp.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/test")
public class TestController {
	@RequestMapping(value="/mytest",method=RequestMethod.GET)
	public String testPage() {
		return "/test.jsp";
	}
	@RequestMapping(value="/mytest",method=RequestMethod.POST)
	@ResponseBody
	public Object test(String name,String[] aa) {
		String[] a = aa;
		System.out.println(a.toString());
		return aa;
	}
}
