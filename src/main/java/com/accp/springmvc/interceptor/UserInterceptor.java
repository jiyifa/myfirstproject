package com.accp.springmvc.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class UserInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("uri------------------------->"+request.getRequestURI());
		if(request.getSession().getAttribute("user")==null) {
			response.sendRedirect(request.getContextPath()+"/user/login");
			return false;
		}
		return super.preHandle(request, response, handler);
	}
}
