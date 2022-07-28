package com.portfolio.web.controller.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.web.entity.Project;
import com.portfolio.web.service.jdbc.JDBCPortfolioService;

@Controller
@RequestMapping("/")
public class ProjectController {
	@Autowired
	JDBCPortfolioService jdbcPortfolioService;
	
	@RequestMapping("project")
	public String project(String category, String title, Model model) {
		System.out.print("project");
		System.out.println("category : " + category);
		System.out.println("title : " + title);
		Project project = jdbcPortfolioService.getProject(category, title);
		System.out.print(project.getIntroduce());
		model.addAttribute("project", project);
		return "project/project";
	}
	
}
