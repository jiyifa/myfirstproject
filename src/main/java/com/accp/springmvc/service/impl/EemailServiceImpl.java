package com.accp.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.accp.springmvc.mapper.EemailMapper;
import com.accp.springmvc.pojo.Eemail;
import com.accp.springmvc.service.EemailService;

@Service
public class EemailServiceImpl implements EemailService {

	@Autowired
	private EemailMapper eemailMapper;

	public List<Eemail> queryRecieve() {
		// TODO Auto-generated method stub
		return this.eemailMapper.queryRecieve();
	}

	public Eemail queryEmailById(int esid) {
		// TODO Auto-generated method stub
		return this.eemailMapper.queryEmailById(esid);
	}

	public int queryRecieveCount(int uid) {
		// TODO Auto-generated method stub
		return this.eemailMapper.queryRecieveCount(uid);
	}

	public int queryReadEmailCount(int uid) {
		// TODO Auto-generated method stub
		return this.eemailMapper.queryReadEmailCount(uid);
	}
}
