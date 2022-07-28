package com.portfolio.web.entity;

import java.util.Date;

public class Experience {
	private String name;
	private String content;
	private Date join;
	private Date leave;
	
	public Experience(String name, String content, Date join, Date leave) {
		this.name = name;
		this.content = content;
		this.join = join;
		this.leave = leave;
	}
	
	public String getName() {
		return name;
	}
	public String getContent() {
		return content;
	}
	public Date getJoin() {
		return join;
	}
	public Date getLeave() {
		return leave;
	}
	

}
