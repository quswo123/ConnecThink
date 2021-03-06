<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Job Board</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/img/favicon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="${contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${contextPath}/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${contextPath}/css/magnific-popup.css">
    <link rel="stylesheet" href="${contextPath}/css/font-awesome.min.css">
    <link rel="stylesheet" href="${contextPath}/css/themify-icons.css">
    <link rel="stylesheet" href="${contextPath}/css/nice-select.css">
    <link rel="stylesheet" href="${contextPath}/css/flaticon.css">
    <link rel="stylesheet" href="${contextPath}/css/gijgo.css">
    <link rel="stylesheet" href="${contextPath}/css/animate.min.css">
    <link rel="stylesheet" href="${contextPath}/css/slicknav.css">

    <link rel="stylesheet" href="${contextPath}/css/style.css">
    <!-- <link rel="stylesheet" href="${contextPath}/css/responsive.css"> -->
</head>

<body>
    <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

    <!-- header-start -->
    <header>
        <jsp:include page="/header"></jsp:include>
    </header>
    <!-- header-end -->

    <!-- bradcam_area  -->
    <div class="bradcam_area bradcam_bg_1">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="bradcam_text">
                        <h3></h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ bradcam_area  -->

    <div class="job_details_area">
        <div class="container">
            <div class="row" style="justify-content: center;">
                <div class="col-lg-8">
                    <div class="job_details_header">
                        <div class="single_jobs white-bg d-flex justify-content-between">
                            <div class="jobs_left d-flex align-items-center">
                                <!-- profile img -->
                                <div class="thumb">
                                    <img src="${contextPath}/img/svg_icon/1.svg" onerror="this.src='${contextPath}/img/svg_icon/1.svg'" alt="">
                                </div>
                                <div class="jobs_conetent">
                                    <!-- user name -->
<!--                                     <a href="#"> -->
                                        <h4 id="customerName" style="margin-bottom: 20px !important;"></h4>
<!--                                     </a> -->
                                    <div class="links_locat d-flex align-items-center">
                                        <!-- position -->
                                        <div class="location">
                                            <p id="customerPositions"> <i class="fa fa-male"></i>
                                            </p>
                                        </div>
                                        <!-- graduation status -->
                                        <div class="location">
                                            <p id="customerGraduationStatus"> <i class="fa fa-book"></i> </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="descript_wrap white-bg">
                    	<!-- email -->
                    	<div class="single_wrap">
                    		<h4>이메일</h4>
                    		<p id="customerEmail"></p>
                    	</div>
                    	<!-- birth date -->
                    	<div class="single_wrap">
                    		<h4>생년월일</h4>
                    		<p id="customerBirthDate"></p>
                    	</div>
                        <!-- about -->
                        <div class="single_wrap">
                            <h4>한 줄 소개</h4>
                            <p id="customerAbout"></p>
                        </div>
                        <!-- experiences -->
                        <div class="single_wrap">
                            <h4>경험</h4>
                            <ul id="customerExps">
                                
                            </ul>
                        </div>
                        <!-- project history (in connecThink service) -->
                        <div class="single_wrap">
                            <h4>connecThink 프로젝트 경험</h4>
                            <ul id="projectHistories">
                            </ul>
                        </div>
                        <div class="single_wrap" style="text-align: right;">
                            <a href="/connecthink/logined/modifyUserInfo" class="genric-btn info-border">수정</a>
                            <button id="dropBtn" class="genric-btn danger-border">탈퇴</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- footer start -->
    <footer class="footer">
        <jsp:include page="footer.jsp"></jsp:include>
    </footer>
    <!--/ footer end  -->

    <!-- link that opens popup -->
    <!-- JS here -->
    <script src="${contextPath}/js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="${contextPath}/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="${contextPath}/js/popper.min.js"></script>
    <script src="${contextPath}/js/bootstrap.min.js"></script>
    <script src="${contextPath}/js/owl.carousel.min.js"></script>
    <script src="${contextPath}/js/isotope.pkgd.min.js"></script>
    <script src="${contextPath}/js/ajax-form.js"></script>
    <script src="${contextPath}/js/waypoints.min.js"></script>
    <script src="${contextPath}/js/jquery.counterup.min.js"></script>
    <script src="${contextPath}/js/imagesloaded.pkgd.min.js"></script>
    <script src="${contextPath}/js/scrollIt.js"></script>
    <script src="${contextPath}/js/jquery.scrollUp.min.js"></script>
    <script src="${contextPath}/js/wow.min.js"></script>
    <script src="${contextPath}/js/nice-select.min.js"></script>
    <script src="${contextPath}/js/jquery.slicknav.min.js"></script>
    <script src="${contextPath}/js/jquery.magnific-popup.min.js"></script>
    <script src="${contextPath}/js/plugins.js"></script>
    <script src="${contextPath}/js/gijgo.min.js"></script>



    <!--contact js-->
    <script src="${contextPath}/js/contact.js"></script>
    <script src="${contextPath}/js/jquery.ajaxchimp.min.js"></script>
    <script src="${contextPath}/js/jquery.form.js"></script>
    <script src="${contextPath}/js/jquery.validate.min.js"></script>
    <script src="${contextPath}/js/mail-script.js"></script>


    <script src="${contextPath}/js/main.js"></script>
    <script>
    	$(() => {
    		$(".thumb").find("img").css("width", "48").css("height", "48");
    		
    		$.ajax({
    			url : "/connecthink/all/findCustomerByNo",
    			method : "POST",
    			data : {customerNo : ${sessionScope.loginInfo},
    					${_csrf.parameterName} : '${_csrf.token}'},
    			success : (data, textStatus, jqXHR) => {
    				//프로필 사진
    				$(".thumb>img").attr("src", "http://192.168.0.115/storage/customer/${sessionScope.loginInfo}.jpg");
    				//이름
    				$("#customerName").html(data.name);
    				//역할군
    				data.customerPositions.forEach(cp => {
    					$("#customerPositions").html($("#customerPositions").html() + " " + cp.position.name);
    				});
    				//졸업여부
    				if(data.graduation == 1) $("#customerGraduationStatus").html($("#customerGraduationStatus").html() + '졸업');
    				else $("#customerGraduationStatus").html($("#customerGraduationStatus").html() + '미졸업');
    				//이메일
    				$("#customerEmail").html(data.email);
    				//생년월일
    			    var birthDate = new Date(data.birthDate.substr(0, 4), data.birthDate.substr(4, 2) - 1, data.birthDate.substr(6, 2));
    			    var y = birthDate.getFullYear();
    			    var m = (birthDate.getMonth() + 1) >= 10 ? (birthDate.getMonth() + 1) : '0' + (birthDate.getMonth() + 1);
    			    var d = birthDate.getDate() >= 10 ? birthDate.getDate() : '0' + birthDate.getDate();
    				$("#customerBirthDate").html(y + "/" + m + "/" + d);
    				//한 줄 소개
    				$("#customerAbout").html(data.about);
    				data.experiences.forEach(e => {
    					$("#customerExps").html($("#customerExps").html() + "<li>" + e.explain + " " + e.term + "</li>");
    				});
    			}
    		});
    		
    		$.ajax({
    			url : "/connecthink/all/findProjectHistoryByNo",
    			method : "POST",
    			data : {customerNo : ${sessionScope.loginInfo},
					${_csrf.parameterName} : '${_csrf.token}'},
				success : (data, textStatus, jqXHR) => {
					data.forEach(h => {
						var startDate = new Date(h.startDate);
						var endDate = h.endDate != null ? new Date(h.endDate) : null;
						
						var sy = startDate.getFullYear();
	    			    var sm = (startDate.getMonth() + 1) >= 10 ? (startDate.getMonth() + 1) : '0' + (startDate.getMonth() + 1);
	    			    var sd = startDate.getDate() >= 10 ? startDate.getDate() : '0' + startDate.getDate();
	    			    
	    			    if(endDate != null) {
	    			    	var ey = endDate.getFullYear();
		    			    var em = (endDate.getMonth() + 1) >= 10 ? (endDate.getMonth() + 1) : '0' + (endDate.getMonth() + 1);
		    			    var ed = endDate.getDate() >= 10 ? endDate.getDate() : '0' + endDate.getDate();
		    			    
		    			    $("#projectHistories").html($("#projectHistories").html() +  "<li>" + h.title + "(" + h.position + ") " + sy + "/" + sm + "/" + sd + "~" + ey + "/" + em + "/" + ed + "</li>");
	    			    } else {
	    			    	$("#projectHistories").html($("#projectHistories").html() + "<li>" + h.title + "(" + h.position + ") " + sy + "/" + sm + "/" + sd + "~" + "</li>");
	    			    }
					});
					
				}
    		});
    		
    		$("#dropBtn").click(() => {
    			if(confirm("정말 탈퇴하시겠습니까?")) {
    				$.ajax({
            			url : "/connecthink/logined/dropCustomer",
            			method : "POST",
            			data : {customerNo : ${sessionScope.loginInfo},
        					${_csrf.parameterName} : '${_csrf.token}'},
        				success : (data, textStatus, jqXHR) => {
        					//탈퇴 성공시 로그아웃
        					$.ajax({
        						url : "/connecthink/logout",
        						method : "POST",
        						data : {${_csrf.parameterName} : '${_csrf.token}'},
        						success : (data, textStatus, jqXHR) => {
        							location.href = "http://192.168.0.115/connecthink/";
        						}
        					});
        				},
        				error : () => {
        					alert("탈퇴 실패");
        				}
            		});
    			}
    		});
    	});
    </script>
</body>

</html>