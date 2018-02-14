package com.accp.springmvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.accp.springmvc.pojo.Euser;
import com.accp.springmvc.service.EemailService;

@Controller
@RequestMapping("/email")
public class EemailController {
	@Autowired
	private EemailService  eemailService;
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String indexPage() {
		return "/WEB-INF/page/index.jsp";
	}
	@RequestMapping("/mail_mgr")
	@ResponseBody
	public Object mailMgr() {
		
		return "";
	}
	@RequestMapping("/readmail")
	public String readmail() {
		return "/WEB-INF/inframe/view.jsp";
	}
	@RequestMapping("/compose_send")
	@ResponseBody
	public Object compose_send() {
		System.out.println("------------->compose_send ajax<-----------------------");
		return "";
	}
	@RequestMapping("/today")
	public String today(HttpServletRequest request,Model model) {
		Euser user = (Euser)request.getSession().getAttribute("user");
		int uid = user.getUid();
		int recieveCount = this.eemailService.queryRecieveCount(uid);
		int queryReadEmailCount = this.eemailService.queryReadEmailCount(uid);
		model.addAttribute("recieveCount", recieveCount);
		model.addAttribute("queryReadEmailCount", queryReadEmailCount);
		return "/WEB-INF/inframe/today.jsp";
	}
}
