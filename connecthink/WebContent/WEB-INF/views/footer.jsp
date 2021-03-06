<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"></c:set>

  
		<div class="footer_top">
			<div class="container">
				<div class="row">
					<div class="col-xl-3 col-md-6 col-lg-3">
						<div class="footer_widget wow fadeInUp" data-wow-duration="1s"
							data-wow-delay=".3s">
							<div class="footer_logo">
								<a href="/connecthink/"> <img src="${contextPath}/img/logo.png" alt="">
								</a>
							</div>
							<p>
								ConnecThink@support.com <br> +10 873 672 6782 <br> 600/D,
								Green road, NewYork
							</p>
							
							<div class="socail_links">
								<ul>
									<li><a href="#"> <i class="ti-facebook"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-google-plus"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-twitter"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-instagram"></i>
									</a></li>
								</ul>
							</div>

						</div>
					</div>
					<div class="col-xl-2 col-md-6 col-lg-2">
						<div class="footer_widget wow fadeInUp" data-wow-duration="1.1s"
							data-wow-delay=".4s">
							<h3 class="footer_title">Company</h3>
							<ul>
								<li><a href="${contextPath}/about">서비스 소개</a></li>
							</ul>

						</div>
					</div>
					<div class="col-xl-3 col-md-6 col-lg-3">
						<div class="footer_widget wow fadeInUp" data-wow-duration="1.2s"
							data-wow-delay=".5s">
							<h3 class="footer_title">Category</h3>
							<ul>
								<li><a href="${contextPath}/all/customerList">모집중인 회원</a></li>
								<li><a href="${contextPath}/all/rec">모집중인 프로젝트</a></li>
								<li><a href="${contextPath}/logined/add_project">프로젝트 등록</a></li>
								<li><a href="${contextPath}/event">진행중인 교육·행사</a></li>
							</ul>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		<div class="copy-right_text wow fadeInUp" data-wow-duration="1.4s"
			data-wow-delay=".3s">
			<div class="container">
				<div class="footer_border"></div>
				<div class="row">
					<div class="col-xl-12">
						<p class="copy_right text-center">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>document.write(new Date().getFullYear());</script>
							All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>
				</div>
			</div>
		</div>
