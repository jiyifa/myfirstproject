package com.accp.springmvc.pojo;

import java.util.Date;

public class Eemail {
	  private Integer esid;
	  private String title;
	  private String content;
	  private Integer senderid;
	  private Integer getemail;
	  private Date senddate;
	  private Integer emailstatus;
	public Integer getEsid() {
		return esid;
	}
	public void setEsid(Integer esid) {
		this.esid = esid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getSenderid() {
		return senderid;
	}
	public void setSenderid(Integer senderid) {
		this.senderid = senderid;
	}
	public Integer getGetemail() {
		return getemail;
	}
	public void setGetemail(Integer getemail) {
		this.getemail = getemail;
	}
	public Date getSenddate() {
		return senddate;
	}
	public void setSenddate(Date senddate) {
		this.senddate = senddate;
	}
	public Integer getEmailstatus() {
		return emailstatus;
	}
	public void setEmailstatus(Integer emailstatus) {
		this.emailstatus = emailstatus;
	}
}
