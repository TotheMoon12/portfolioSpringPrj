package com.portfolio.web.entity;

public class User {
	private String englishName;
	private String name;	
	private String category;
	private String images;
	private String githubURL;
	private String phoneNumber;
	private String email;
	private String country;
	private String address;
	public User(String englishName, String name, String category, String images, String githubURL, String phoneNumber,
			String email, String country, String address) {
		super();
		this.englishName = englishName;
		this.name = name;
		this.category = category;
		this.images = images;
		this.githubURL = githubURL;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.country = country;
		this.address = address;
	}
	public String getEnglishName() {
		return englishName;
	}
	public String getName() {
		return name;
	}
	public String getCategory() {
		return category;
	}
	public String getImages() {
		return images;
	}
	public String getGithubURL() {
		return githubURL;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public String getEmail() {
		return email;
	}
	public String getCountry() {
		return country;
	}
	public String getAddress() {
		return address;
	}
}
