package com.portfolio.web.entity;

import java.util.Date;

public class Award {
	private String name;
	private String content;
	private Date awardDate;
	
	public Award(String name, String content, Date awardDate) {
		this.name = name;
		this.content = content;
		this.awardDate = awardDate;
	}
	
	public String getName() {
		return name;
	}
	public String getContent() {
		return content;
	}
	public Date getAwardDate() {
		return awardDate;
	}	
}
