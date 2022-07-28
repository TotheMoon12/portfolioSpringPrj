package com.portfolio.web.entity;

public class ProjectSummaryView {
	private String title;
	private String repImage;
	private String introduce;
	private String category;
	
	public ProjectSummaryView(String title, String repImage, String introduce, String category) {
		this.title = title;
		this.repImage = repImage;
		this.introduce = introduce;
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public String getRepImage() {
		return repImage;
	}

	public String getIntroduce() {
		return introduce;
	}

	public String getCategory() {
		return category;
	}	
}
