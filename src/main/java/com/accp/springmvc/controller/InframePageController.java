package com.accp.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/inframe")
public class InframePageController {
	@RequestMapping("/writeemail")
	public String writeemail() {
		return "/WEB-INF/inframe/writeemail.jsp";
	}
	@RequestMapping("/laddr_list")
	public String laddrList() {
		return "/WEB-INF/inframe/laddr_list.jsp";
	}
	@RequestMapping("/recieve")
	public String recieve() {
		return "/WEB-INF/inframe/recieve.jsp";
	}
	/**
	 * 垃圾箱
	 * @return
	 */
	@RequestMapping("/recycle")
	public String recycle() {
		return "/WEB-INF/inframe/recycle.jsp";
	}
	/**
	 * 草稿箱
	 * @return
	 */
	@RequestMapping("/sketch")
	public String sketch() {
		return "/WEB-INF/inframe/sketch.jsp";
	}
	/**
	 * 已发送
	 * @return
	 */
	@RequestMapping("/sended")
	public String sended() {
		return "/WEB-INF/inframe/sended.jsp";
	}
	/**
	 * 已删除
	 * @return
	 */
	@RequestMapping("/deleted")
	public String deleted() {
		return "/WEB-INF/inframe/deleted.jsp";
	}
	/**
	 * 查看邮件
	 * @return
	 */
	@RequestMapping("/view")
	public String view() {
		return "/WEB-INF/inframe/view.jsp";
	}
}
