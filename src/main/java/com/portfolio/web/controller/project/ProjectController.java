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
		System.out.println("project Controler");
		Project project = jdbcPortfolioService.getProject(category, title);
		model.addAttribute("project", project);
		String images = project.getImages();

		String firstImage = "";
		if (images != null) {
			String[] imageList = images.split(",");
			firstImage = "images/project/" + project.getCategory() + "/" +project.getTitle() + "/" +imageList[0];
		}
		model.addAttribute("firstImage", firstImage);
		return "project/project";
	}	
}
