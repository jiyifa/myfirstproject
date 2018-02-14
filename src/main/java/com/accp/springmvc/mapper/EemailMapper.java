package com.accp.springmvc.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.accp.springmvc.pojo.Eemail;

public interface EemailMapper {
	/**
	 * 查询收件箱
	 * @return
	 */
	public List<Eemail> queryRecieve();
	public Eemail queryEmailById(@Param("esid")int esid);
	/*
	 * 查询收件箱邮件数
	 */
	public Integer queryRecieveCount(@Param("uid")int uid);
	/**
	 * 查询收件箱未读邮件数
	 * @return
	 */
	public Integer queryReadEmailCount(@Param("uid")int uid);
}
