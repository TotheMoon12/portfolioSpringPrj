package com.portfolio.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.web.entity.Portfolio;
import com.portfolio.web.service.jdbc.JDBCPortfolioService;

@Controller
@RequestMapping("/")
public class HomeController {
	@Autowired
	JDBCPortfolioService jdbcPortfolioService;
	
	@RequestMapping("index")
	public String index(Model model) {
		Portfolio portfolio = jdbcPortfolioService.getPortfolio();
		model.addAttribute("portfolio", portfolio);
		return "index";
	}
	
	
	/*
	 * @Override public ModelAndView handleRequest(HttpServletRequest request,
	 * HttpServletResponse response) throws Exception { // TODO Auto-generated
	 * method stub System.out.println("hello"); ModelAndView mv = new
	 * ModelAndView(); mv.setViewName("index"); return mv; }
	 */

}
