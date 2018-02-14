package com.accp.springmvc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.accp.springmvc.mapper.EuserMapper;
import com.accp.springmvc.pojo.Euser;
import com.accp.springmvc.service.EuserService;

@Service
public class EuserServiceImp implements EuserService {

	@Autowired
	private EuserMapper euserMapper;
	public Euser login(String uname, String upwd) {
		// TODO Auto-generated method stub
		return this.euserMapper.selectUserByCondition(uname, upwd);
	}
}
