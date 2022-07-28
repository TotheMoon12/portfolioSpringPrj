package com.portfolio.web.entity;

public class Project {
	private String title;
	private String images;
	private String introduce;
	private String content;
	private String githubURL;
	private String category;
	
	public Project(String title, String images, String introduce, String content, String githubURL, String category) {
		this.title = title;
		this.images = images;
		this.introduce = introduce;
		this.content = content;
		this.githubURL = githubURL;
		this.category = category;
	}
	
	public String getTitle() {
		return title;
	}
	
	public String getImages() {
		return images;
	}
	
	public String getIntroduce() {
		return introduce;
	}
	
	public String getContent() {
		return content;
	}
	
	public String getGithubURL() {
		return githubURL;
	}
	
	public String getCategory() {
		return category;
	}
}
