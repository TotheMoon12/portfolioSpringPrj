package com.portfolio.web.entity;

public class Skill {
	private String name;
	private int percent;
	
	public Skill(String name, int percent) {
		this.name = name;
		this.percent = percent;
	}

	public String getName() {
		return name;
	}

	public int getPercent() {
		return percent;
	}	
}
