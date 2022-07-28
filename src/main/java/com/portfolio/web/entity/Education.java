package com.portfolio.web.entity;

import java.util.Date;

public class Education {
	private String schoolName;
	private String content;
	private Date admission;
	private Date graduation;
	
	public Education(String schoolName, String content, Date admission, Date graduation) {
		super();
		this.schoolName = schoolName;
		this.content = content;
		this.admission = admission;
		this.graduation = graduation;
	}
	
	public String getSchoolName() {
		return schoolName;
	}
	public String getContent() {
		return content;
	}
	public Date getAdmission() {
		return admission;
	}
	public Date getGraduation() {
		return graduation;
	}
}
