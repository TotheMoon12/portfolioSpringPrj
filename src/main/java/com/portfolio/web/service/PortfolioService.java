package com.portfolio.web.service;

import java.util.List;

import com.portfolio.web.entity.Portfolio;
import com.portfolio.web.entity.Project;

public interface PortfolioService {
	Portfolio getPortfolio();
	Project getProject(String category, String title);
}
