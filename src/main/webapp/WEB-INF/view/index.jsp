<%@page import="com.portfolio.web.entity.Portfolio"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>${portfolio.user.name} 포트폴리오</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />

  <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">
	<!-- project css -->
	<link rel="stylesheet" href="css/project.css">

	<!-- For Github Icorn  -->
	<script src="https://kit.fontawesome.com/012cf477c7.js" crossorigin="anonymous"></script>

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	

	</head>
	<body>
	<div id="colorlib-page">
		<div class="container-wrap">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="border js-fullheight">
			<div class="text-center">
				<div class="author-img" style="background-image: url(images/about.jpg);"></div>
				<h1 id="colorlib-logo"><a href="index.html">${portfolio.user.name}</a></h1>
				<span class="position"><a href="#">Back-End</a> in Korea</span>
			</div>
			<nav id="colorlib-main-menu" role="navigation" class="navbar">
				<div id="navbar" class="collapse">
					<ul>
						<li class="active"><a href="#" data-nav-section="home">Home</a></li>
						<li><a href="#" data-nav-section="about">About</a></li>
						<li><a href="#" data-nav-section="skills">Skills</a></li>
						<li><a href="#" data-nav-section="education">Education</a></li>
						<li><a href="#" data-nav-section="experience">Experience</a></li>
						<li><a href="#" data-nav-section="award">Award</a></li>
						<li><a href="#" data-nav-section="project">project</a></li>						
						<li><a href="#" data-nav-section="contact">Contact</a></li>
					</ul>
				</div>
			</nav>

			<div class="colorlib-footer">
				<p><small>&copy; <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright <script>document.write(new Date().getFullYear());</script> All rights reserved. Made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --> </span> <span>Distributed by <a href="https://themewagon.com" target="_blank">ThemeWagon</a></span> <span>Demo Images: <a href="https://unsplash.com/" target="_blank">Unsplash.com</a></span></small></p>
				<ul>
					<li><a href="${portfolio.user.githubURL}"><i class="fa-brands fa-github"></i></a></li>					
				</ul>
			</div>

		</aside>

		<div id="colorlib-main">
			<section id="colorlib-hero" class="js-fullheight" data-section="home">
				<div class="flexslider js-fullheight">
					<ul class="slides">
				   	<li style="background-image: url(images/img_bg_1.jpg);">
					<!-- <li> -->
				   		<div class="overlay"></div>
				   		<div class="container-fluid">
				   			<div class="row">
					   			<div class="col-md-6 col-md-offset-3 col-md-pull-3 col-sm-12 col-xs-12 js-fullheight slider-text">
					   				<div class="slider-text-inner js-fullheight">
					   					<div class="desc">
						   					<h1>안녕하세요 <br>서민우입니다</h1>
											<p>포트폴리오 작성중입니다</p>
										</div>
					   				</div>
					   			</div>
					   		</div>
				   		</div>
				   	</li>
				   	<li style="background-image: url(images/img_bg_2.jpg);">
					<!-- <li> -->
				   		<div class="overlay"></div>
				   		<div class="container-fluid">
				   			<div class="row">
					   			<div class="col-md-6 col-md-offset-3 col-md-pull-3 col-sm-12 col-xs-12 js-fullheight slider-text">
					   				<div class="slider-text-inner">
					   					<div class="desc">
						   					<h1>I am <br>${portfolio.user.englishName}</h1>
										</div>
					   				</div>
					   			</div>
					   		</div>
				   		</div>
				   	</li>
				  	</ul>
			  	</div>
			</section>

			<section class="colorlib-about" data-section="about">
				<div class="colorlib-narrow-content">
					<div class="row">
						<div class="col-md-12">
							<div class="row row-bottom-padded-sm animate-box" data-animate-effect="fadeInLeft">
								<div class="col-md-12">
									<div class="about-desc">
										<span class="heading-meta">About Us</span>
										<h2 class="colorlib-heading">Who Am I?</h2>
										<p><strong>안녕하세요 저는 백엔드 개발자 지망생 서민우입니다.</strong>  </p>
										<p></p>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3 animate-box" data-animate-effect="fadeInLeft">
									<div class="services color-1">
										<span class="icon2"><i class="icon-bulb"></i></span>
										<h3>BlockChain</h3>
									</div>
								</div>
								<div class="col-md-3 animate-box" data-animate-effect="fadeInRight">
									<div class="services color-2">
										<span class="icon2"><i class="icon-globe-outline"></i></span>
										<h3>Back-end</h3>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>


			<section class="colorlib-skills" data-section="skills">
				<div class="colorlib-narrow-content">
					<div class="row">
						<div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
							<span class="heading-meta">My Specialty</span>
							<h2 class="colorlib-heading animate-box">My Skills</h2>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">
							<p> 주로 자바를 이용하여 개발을 하고 있습니다.</p>
						</div>
						<c:forEach var="skill" items="${portfolio.skillList}" varStatus="status">
			            <c:set var="animate" value="fadeInLeft"></c:set>
			            <c:if test="${status.count % 2 == 1}">
			            </c:if>
			            <c:set var="animate" value="fadeInRight"></c:set>
			            <div class="col-md-6 animate-box" data-animate-effect="${animate}">
							<div class="progress-wrap">
								<h3>${skill.name}</h3>
								<div class="progress">
								 	<div class="progress-bar color-${status.count}" role="progressbar" aria-valuenow="${skill.percent}"
								  	aria-valuemin="0" aria-valuemax="100" style="width:${skill.percent}%">
								    <span>${skill.percent}%</span>
								  	</div>
								</div>
							</div>
						</div>
						</c:forEach>
					</div>
				</div>
			</section>

			

			<section class="colorlib-list" data-section="education">
				<div class="colorlib-narrow-content">
					<div class="row">
						<div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
							<span class="heading-meta">Education</span>
							<h2 class="colorlib-heading animate-box">Education</h2>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
				         <div class="timeline-centered">
				             <c:forEach var="education" items="${portfolio.educationList}" varStatus="status">
				             <c:set var="animate" value="fadeInLeft"></c:set>
				             <c:if test="${status.count % 2 == 1}">
				             <c:set var="animate" value="fadeInRight"></c:set>
				             </c:if>
				             <article class="timeline-entry animate-box" data-animate-effect="${animate}">
					            <div class="timeline-entry-inner">
					               <div class="timeline-icon color-${status.count}">
					                  <i class="icon-pen2"></i>
					               </div>
					               <div class="timeline-label">
					                  <%-- <h2>${education.schoolName} <span> ${education.admission.year + 1900}~${education.graduation.year + 1900}</span></h2> --%>
					                  <h2>${education.schoolName}<span><fmt:formatDate value="${education.admission}" pattern="yyyy-MM"/>~<fmt:formatDate value="${education.graduation}" pattern="yyyy-MM"/></span></h2>					                  
					                  <p>${education.content}</p>
					               </div>
					            </div>
					         </article>
				             </c:forEach>
					      </div>
					   </div>
				   </div>
				</div>
			</section>


			<section class="colorlib-list" data-section="experience">
				<div class="colorlib-narrow-content">
					<div class="row">
						<div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
							<span class="heading-meta">Experience</span>
							<h2 class="colorlib-heading animate-box">Experience</h2>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
				         <div class="timeline-centered">
				         	 <c:forEach var="experience" items="${portfolio.experienceList}" varStatus="status">
				         	 <c:set var="animate" value="fadeInLeft"></c:set>
				             <c:if test="${status.count % 2 == 1}">
				             <c:set var="animate" value="fadeInRight"></c:set>
				             </c:if>
				             <article class="timeline-entry animate-box" data-animate-effect="${animate}">
					            <div class="timeline-entry-inner">
					               <div class="timeline-icon color-${status.count}">
					                  <i class="icon-pen2"></i>
					               </div>
					               <div class="timeline-label">
									  <h2 >${experience.name}<span><fmt:formatDate value="${experience.join}" pattern="yyyy-MM"/>~<fmt:formatDate value="${experience.leave}" pattern="yyyy-MM"/></span></h2>									  
					                  <p>${experience.content}</p>									  
					               </div>
					            </div>
					         </article>
				         	 </c:forEach>					         
					      </div>
					   </div>
				   </div>
				</div>
			</section>

			<section class="colorlib-list" data-section="award">
				<div class="colorlib-narrow-content">
					<div class="row">
						<div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
							<span class="heading-meta">Award</span>
							<h2 class="colorlib-heading animate-box">Award</h2>
						</div>
					</div>
					<div class="row">
						<c:forEach var="award" items="${portfolio.awardList}" varStatus="status">
			         	<c:set var="animate" value="fadeInLeft"></c:set>
			            <c:if test="${status.count % 2 == 1}">
			            <c:set var="animate" value="fadeInRight"></c:set>
			            </c:if>
			            <div class="col-md-12">
				           <div class="timeline-centered">
					         <article class="timeline-entry animate-box" data-animate-effect="${animate}">
					            <div class="timeline-entry-inner">
					               <div class="timeline-icon color-${status.count}">
					                  <i class="icon-pen2"></i>
					               </div>
					               <div class="timeline-label">
									  <h2>${award.name}<span><fmt:formatDate value="${award.awardDate}" pattern="yyyy-MM-dd"/></span></h2>									  
					                  <p>${award.content}</p>
					               </div>
					            </div>
					         </article>
					      </div>
					    </div>
			            </c:forEach>
				   </div>
				</div>
			</section>

			<section class="colorlib-project" data-section="project">
				<div class="colorlib-narrow-content">
					<div class="row">
						<div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
							<span class="heading-meta">My work</span>
							<h2 class="colorlib-heading animate-box">Recent work(Dev Ing...)</h2>
						</div>
					</div>
					<div class="row row-bottom-padded-sm animate-box" data-animate-effect="fadeInLeft">
						<div class="col-md-12">
							<p class="project-menu"><span><a href="javascript:void(0);" id="all" class="active">All</a></span><span><a href="javascript:void(0);" onclick="blockchain()" id="blockchain">Blockchain</a></span> <span><a href="javascript:void(0);" onclick="backend()" id="backend">Backend</a></span></p>
						</div>
					</div>

					<div class="row">
						<c:forEach var="project" items="${portfolio.projectSummaryList}" varStatus="status">
			         	<c:set var="animate" value="fadeInLeft"></c:set>
			            <c:if test="${status.count % 2 == 1}">
			            <c:set var="animate" value="fadeInRight"></c:set>
			            </c:if>
						<div class="col-md-6 animate-box ${project.category} work" data-animate-effect="${animate}">
							<div class="project" style="background-image: url(images/img-${status.count}.jpg);">
								<div class="desc">
									<div class="con">
										<h3><a name="project-item" path="project/${project.category}/${project.title}" href="javascript:void(0);">${project.title}</a></h3>
										<span>${project.introduce}</span>										
									</div>									
								</div>
							</div>
						</div>
						</c:forEach>
					</div>
					
				</div>
			</section>
		

			<section class="colorlib-contact" data-section="contact">
				<div class="colorlib-narrow-content">
					<div class="row">
						<div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
							<span class="heading-meta">Get in Touch</span>
							<h2 class="colorlib-heading">Contact</h2>
						</div>
					</div>
					<div class="row">
						<div class="col-md-5">
							<div class="colorlib-feature colorlib-feature-sm animate-box" data-animate-effect="fadeInLeft">
								<div class="colorlib-icon">
									<i class="icon-globe-outline"></i>
								</div>
								<div class="colorlib-text">
									<p><a href="#">info@domain.com</a></p>
								</div>
							</div>

							<div class="colorlib-feature colorlib-feature-sm animate-box" data-animate-effect="fadeInLeft">
								<div class="colorlib-icon">
									<i class="icon-map"></i>
								</div>
								<div class="colorlib-text">
									<p>198 West 21th Street, Suite 721 New York NY 10016</p>
								</div>
							</div>

							<div class="colorlib-feature colorlib-feature-sm animate-box" data-animate-effect="fadeInLeft">
								<div class="colorlib-icon">
									<i class="icon-phone"></i>
								</div>
								<div class="colorlib-text">
									<p><a href="tel://">+123 456 7890</a></p>
								</div>
							</div>
						</div>
						<div class="col-md-7 col-md-push-1">
							<div class="row">
								<div class="col-md-10 col-md-offset-1 col-md-pull-1 animate-box" data-animate-effect="fadeInRight">
									<form action="">
										<div class="form-group">
											<input type="text" class="form-control" placeholder="Name">
										</div>
										<div class="form-group">
											<input type="text" class="form-control" placeholder="Email">
										</div>
										<div class="form-group">
											<input type="text" class="form-control" placeholder="Subject">
										</div>
										<div class="form-group">
											<textarea name="" id="message" cols="30" rows="7" class="form-control" placeholder="Message"></textarea>
										</div>
										<div class="form-group">
											<input type="submit" class="btn btn-primary btn-send-message" value="Send Message">
										</div>
									</form>
								</div>
								
							</div>
						</div>
					</div>
				</div>
			</section>

			<!-- blank for last menu active  -->
			<section class="colorlib-contact" data-section="blank">
				<div class="colorlib-narrow-content">					
				</div>
			</section>

		</div><!-- end:colorlib-main -->
	</div><!-- end:container-wrap -->
	</div><!-- end:colorlib-page -->

	<div class="project-overlay hidden">
	</div>
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Counters -->
	<script src="js/jquery.countTo.js"></script>
	<!-- for load overlay page -->
	<script src="js/overlayload.js"></script>
	<!--Tab-->
	<script src="js/tab.js"></script>
	
	<!-- MAIN JS -->
	<script src="js/main.js"></script>
	<!-- slide -->
	<script src="js/slider.js"></script>
	</body>
</html>

