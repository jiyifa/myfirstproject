package com.accp.springmvc.service;

import java.util.List;

import com.accp.springmvc.pojo.Eemail;

public interface EemailService {
	public List<Eemail> queryRecieve();
	public Eemail queryEmailById(int esid);
	public int queryRecieveCount(int uid);
	public int queryReadEmailCount(int uid);
}
