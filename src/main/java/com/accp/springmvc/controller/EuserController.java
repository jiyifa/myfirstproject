package com.accp.springmvc.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.accp.springmvc.pojo.Euser;
import com.accp.springmvc.service.EuserService;

@Controller
@RequestMapping("/user")
public class EuserController {
	@Autowired
	private EuserService euserService;
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String loginPage() {
		return "/WEB-INF/page/login.jsp";
	}
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/user/login";
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	@ResponseBody
	public Object login(String uname,String upwd,HttpServletRequest request) {
		Map<String,Object> data = new HashMap<String,Object>();
		Euser user = this.euserService.login(uname, upwd);
		if(user!=null) {
			request.getSession().setAttribute("user", user);
			data.put("info", "success");
		}else {
			data.put("info", "fail");
		}
		return data;
	}
}
