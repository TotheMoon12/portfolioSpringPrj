package com.portfolio.web.service.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.web.entity.Award;
import com.portfolio.web.entity.Education;
import com.portfolio.web.entity.Experience;
import com.portfolio.web.entity.Portfolio;
import com.portfolio.web.entity.Project;
import com.portfolio.web.entity.ProjectSummaryView;
import com.portfolio.web.entity.Skill;
import com.portfolio.web.entity.User;
import com.portfolio.web.service.PortfolioService;

@Service
public class JDBCPortfolioService implements PortfolioService {	
	@Autowired
	private DataSource dataSource;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	
	@Override
	public Portfolio getPortfolio() {
		String sqlAward = "SELECT * FROM AWARD";
		String sqlEducation = "SELECT * FROM EDUCATION ORDER BY ADMISSION";
		String sqlExperience = "SELECT * FROM EXPERIENCE";
		String sqlProjectSummaryView = "SELECT * FROM PROJECT_SUMMARY_VIEW";
		String sqlSkill = "SELECT * FROM SKILL ORDER BY PERCENT DESC";
		String sqlUser = "SELECT * FROM \"USER\"";
		
		List<Award> awardList = new ArrayList<>();
		List<Education> educationList = new ArrayList<>();
		List<Experience> experienceList = new ArrayList<>();
		List<ProjectSummaryView> projectSummaryViewList = new ArrayList<>();
		List<Skill> skillList = new ArrayList<>();
		User user = null;
		Portfolio portfolio = null;
		
		try {
			Connection con = dataSource.getConnection();
			
			Statement statement = con.createStatement();
			ResultSet rs = statement.executeQuery(sqlAward);
			while (rs.next()) {
				String name = rs.getString("NAME");
				String content = rs.getString("CONTENT");
				Date awardDate = rs.getDate("AWARD_DATE");
				
				Award award = new Award(name, content, awardDate);
				awardList.add(award);
			}
			
			rs = statement.executeQuery(sqlEducation);
			while (rs.next()) {
				String schoolName = rs.getString("NAME");
				String content = rs.getString("CONTENT");
				Date admission = rs.getDate("ADMISSION");
				Date graduation = rs.getDate("GRADUATION");
				
				Education education = new Education(schoolName, content, admission, graduation);
				educationList.add(education);
			}
			
			rs = statement.executeQuery(sqlExperience);
			while (rs.next()) {
				String name = rs.getString("NAME");
				String content = rs.getString("CONTENT");
				Date join = rs.getDate("JOIN");
				Date leave = rs.getDate("LEAVE");
				
				Experience experience = new Experience(name, content, join, leave);
				experienceList.add(experience);
			}
			
			rs = statement.executeQuery(sqlProjectSummaryView);
			while (rs.next()) {
				String title = rs.getString("TITLE");
				String introduce = rs.getString("INTRODUCE");
				String category = rs.getString("CATEGORY");
				String images = rs.getString("IMAGE");
				StringTokenizer stringTokenizer = new StringTokenizer(images, ",");
				String repImage = "";
				if (stringTokenizer.hasMoreTokens()) {
					repImage = stringTokenizer.nextToken();
				}
				
				ProjectSummaryView projectSummaryView = new ProjectSummaryView(title, repImage, introduce, category);
				projectSummaryViewList.add(projectSummaryView);
			}
			
			rs = statement.executeQuery(sqlSkill);
			while (rs.next()) {
				String name = rs.getString("NAME");
				int percent = rs.getInt("PERCENT");
				
				Skill skill = new Skill(name, percent);
				skillList.add(skill);
			}
			
			rs = statement.executeQuery(sqlUser);
			if (rs.next()) {
				String englishName = rs.getString("E_NAME");
				String name = rs.getString("NAME");
				String category = rs.getString("CATEGORY");
				String images = rs.getString("IMAGE_PATH");
				String githubURL = rs.getString("URL");
				String phoneNumber = rs.getString("PHONE");
				String email = rs.getString("EMAIL");
				String country = rs.getString("COUNTRY");
				String address = rs.getString("ADDRESS");
				
				user = new User(englishName, name, category, images, githubURL, phoneNumber, email, country, address);				
			}
		
			
			portfolio = new Portfolio(awardList, educationList, experienceList, skillList, projectSummaryViewList, user);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return portfolio;
	}


	@Override
	public Project getProject(String category, String title) {
		String sql = "SELECT * FROM PROJECT P WHERE P.CATEGORY=? AND P.TITLE=?";
		
		Project project = null;		
		try {
			Connection con = dataSource.getConnection();
			PreparedStatement preparedStatement = con.prepareStatement(sql);
			preparedStatement.setString(1, category);
			preparedStatement.setString(2, title);
			ResultSet rs = preparedStatement.executeQuery();
			if (rs.next()) {
				String images = rs.getString("IMAGE");
				String introduce = rs.getString("INTRODUCE");
				String content = rs.getString("CONTENT");
				String githubURL = rs.getString("URL");
				
				project = new Project(title, images, introduce, content, githubURL, category);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return project;
	}
}
