package com.accp.springmvc.mapper;

import org.apache.ibatis.annotations.Param;

import com.accp.springmvc.pojo.Euser;

public interface EuserMapper {
	public Euser selectUserByCondition(@Param("uname")String uname,@Param("upwd")String upwd);
}
