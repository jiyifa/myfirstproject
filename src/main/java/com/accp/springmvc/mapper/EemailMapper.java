package com.accp.springmvc.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.accp.springmvc.pojo.Eemail;

public interface EemailMapper {
	/**
	 * ��ѯ�ռ���
	 * @return
	 */
	public List<Eemail> queryRecieve();
	public Eemail queryEmailById(@Param("esid")int esid);
	/*
	 * ��ѯ�ռ����ʼ���
	 */
	public Integer queryRecieveCount(@Param("uid")int uid);
	/**
	 * ��ѯ�ռ���δ���ʼ���
	 * @return
	 */
	public Integer queryReadEmailCount(@Param("uid")int uid);
}
