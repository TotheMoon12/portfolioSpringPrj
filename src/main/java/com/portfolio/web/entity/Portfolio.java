package com.portfolio.web.entity;

import java.util.List;

public class Portfolio {
	private List<Award> awardList;
	private List<Education> educationList;
	private List<Experience> experienceList;
	private List<Skill> skillList;
	private List<ProjectSummaryView> projectSummaryList;
	private User user;
	
	public Portfolio(List<Award> awardList, List<Education> educationList, List<Experience> experienceList,
			List<Skill> skillList, List<ProjectSummaryView> projectSummaryList, User user) {
		this.awardList = awardList;
		this.educationList = educationList;
		this.experienceList = experienceList;
		this.skillList = skillList;
		this.projectSummaryList = projectSummaryList;
		this.user = user;
	}

	public List<Award> getAwardList() {
		return awardList;
	}

	public void setAwardList(List<Award> awardList) {
		this.awardList = awardList;
	}

	public List<Education> getEducationList() {
		return educationList;
	}

	public void setEducationList(List<Education> educationList) {
		this.educationList = educationList;
	}

	public List<Experience> getExperienceList() {
		return experienceList;
	}

	public void setExpereienceList(List<Experience> experienceList) {
		this.experienceList = experienceList;
	}

	public List<Skill> getSkillList() {
		return skillList;
	}

	public void setSkillList(List<Skill> skillList) {
		this.skillList = skillList;
	}

	public List<ProjectSummaryView> getProjectSummaryList() {
		return projectSummaryList;
	}

	public void setProjectSummaryList(List<ProjectSummaryView> projectSummaryList) {
		this.projectSummaryList = projectSummaryList;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}	
}
