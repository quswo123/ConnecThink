<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="detail" value="${requestScope.detail}" />
<c:set var="manager" value="${requestScope.manager}" />
<c:set var="recNo" value="${requestScope.recNo}" />

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>모집수정</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="manifest" href="site.webmanifest"> -->
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
<!-- Place favicon.ico in the root directory -->

<!-- CSS here -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/themify-icons.css">
<link rel="stylesheet" href="css/nice-select.css">
<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/gijgo.css">
<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/slicknav.css">

<link rel="stylesheet" href="css/style.css">
<!-- <link rel="stylesheet" href="css/responsive.css"> -->

<style>
.position, .position11, .position21, .position31 {
	height: 60px !important;
	border: 1px solid #E8E8E8 !important;
	width: 100% !important;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	margin-bottom: 20px;
	font-size: 1em !important;
	padding-top: 10px !important;
}

.position .option {
	padding-right: 16em !important;
}

.position11 .option {
	padding-right: 11.5em !important;
}

.position21 .option {
	padding-right: 13em !important;
}

.position31 .option {
	padding-right: 12.5em !important;
}

h5 .requir {
	color: red;
}

h4 .requir {
	color: red;
	font-size: 0.5em !important;
}
</style>

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
						<h3>모집수정</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/ bradcam_area  -->
	<c:forEach items="${detail.recruits}" var="rec" varStatus="status">
		<c:if test="${recNo eq rec.recruitNo}">
			<div class="job_details_area">
				<div class="container">
					<div class="row">
						<div class="col-lg-10 offset-lg-1">
							<div class="apply_job_form white-bg mt-0">
								<h4>
									모집 수정하기 <span class="requir">*은 필수 입력 값입니다</span>
								</h4>
								<form id="form">
									<div class="row">
										<div class="col-md-5" style="display: none;">
											<div class="input_field">
												<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
												<input type="hidden" name="projectNo" value="${detail.projectNo}">
												<input type="hidden" name="recruitNo" value="${recNo}">
											</div>
										</div>
										<div class="col-md-2">
											<h5 class="mt-3" style="font-weight: bold;">
												모집분야 <span class="requir"> *</span>
											</h5>
										</div>
										<div class="col-md-5 ">
											<div class="input_field text-center position0">
												<input id="getPosition" style="display: none;" type="text" value="${rec.position.positionNo}">
												<select class="position" onchange="position(this);" id="pos">
													<option value="0">직군선택</option>
													<option value="1">기획자</option>
													<option value="2">디자이너</option>
													<option value="3">개발자</option>
												</select>
											</div>
										</div>
										<div class="col-md-5">
											<div class="input_field position1" style="display: none;">
												<select class="position11" name="positionNo" id="positionNo1">
													<option value="0">직무선택</option>
													<option value="1">사업기획자</option>
													<option value="2">컨텐츠기획자</option>
													<option value="3">기획자</option>
													<option value="4">마케터</option>
													<option value="5">서비스운영자</option>
													<option value="6">마케팅</option>
													<option value="7">상품기획자</option>
													<option value="8">모바일서비스기획자</option>
												</select>
											</div>
											<!-- 2 -->
											<div class="input_field position2" style="display: none;">
												<select class="position21" name="positionNo" id="positionNo2">
													<option value="0">직무선택</option>
													<option value="9">디자이너</option>
													<option value="10">UI/UX디자이너</option>
													<option value="11">그래픽디자이너</option>
													<option value="12">웹 디자이너</option>
													<option value="13">영상디자이너</option>
													<option value="14">산업디자이너</option>
													<option value="15">일러스트레이터</option>
													<option value="16">모바일 디자이너</option>
												</select>
											</div>
											<!-- 3 -->
											<div class="input_field position3" style="display: none;">
												<select class="position31" name="positionNo" id="positionNo3">
													<option value="0">직무선택</option>
													<option value="17">개발자</option>
													<option value="18">백엔드 개발자</option>
													<option value="19">웹개발자</option>
													<option value="20">프로트엔드개발자</option>
													<option value="21">안드로이드개발자</option>
													<option value="22">IOS</option>
													<option value="23">임베디드 개발자</option>
													<option value="24">DB 개발자</option>
												</select>
											</div>
											<!-- 끝-->
										</div>
										<div class="col-md-2">
											<h5 class="mt-3" style="font-weight: bold;">
												모집인원 <span class="requir"> *</span>
											</h5>
										</div>
										<div class="col-md-10">
											<div class="input_field">
												<input type="number" min="1" max="10" name="headCount" value="${rec.headCount}" required>
											</div>
										</div>
										<div class="col-md-2">
											<h5 class="mt-3" style="font-weight: bold;">
												모집기한 <span class="requir"> *</span>
											</h5>
										</div>
										<div class="col-md-10">
											<div class="input_field">
											<fmt:formatDate var="dl" value="${rec.deadline}" pattern="yyyy/MM/dd"/>
												<input type="text" class="pr-2" name="deadline" id = "datepicker" value="${dl}" required>
											</div>
										</div>
										<div class="col-md-2">
											<h5 class="mt-3" style="font-weight: bold;">
												요구사항 <span class="requir"> *</span>
											</h5>
										</div>
										<div class="col-md-10">
											<div class="input_field">
												<input type="text" name="requirement" value="${rec.requirement}" required maxlength="100">
											</div>
										</div>
										<div class="col-md-2">
											<h5 class="mt-3" style="font-weight: bold;">
												상세설명 <span class="requir"> *</span>
											</h5>
										</div>
										
											<div class="col-md-10">
												<div class="input_field">
													<textarea name="recExplain" cols="30" rows="10" required><c:forEach items="${requestScope.fList}" var="fList" varStatus="status">${fList}
</c:forEach></textarea>
												</div>
											</div>
										<div class="col-md-2">
											<h5 class="mt-3" style="font-weight: bold;">모집썸네일</h5>
										</div>
										<div class="col-md-10 mb-3">
											<div class="input-group">
												<div class="input-group-prepend">
													<button type="button" id="inputGroupFileAddon03">
														<i class="fa fa-cloud-upload" aria-hidden="true"></i>
													</button>
												</div>
												<div class="custom-file">
													<input type="file" class="custom-file-input" name="recPic" id="inputGroupFile03"
													aria-describedby="inputGroupFileAddon03" accept="image/*" onchange="upload(this);">
														<label class="custom-file-label" for="inputGroupFile03">Upload</label>
													<label class="fileName ml-2 mb-0" style="position: absolute; left: 7%; display: none;">위치테스트</label>
												</div>
											</div>
											<span style="color: #7A838B;">※미 등록 시 기본 이미지 사용 / 권장 이미지 사이즈 : 가로최대 1920px </span>
										</div>
										<div class="col-md-12">
											<div class="submit_btn text-center">
												<button class="boxed-btn3 mr-1 clear" type="button">취소하기</button>
												<button class="boxed-btn3 submit">수정하기</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:if>
	</c:forEach>

	<!-- footer start -->
	<footer class="footer">
		<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
	</footer>
	<!--/ footer end  -->

	<!-- link that opens popup -->
	<!-- JS here -->
	<script src="js/vendor/modernizr-3.5.0.min.js"></script>
	<script src="js/vendor/jquery-1.12.4.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/isotope.pkgd.min.js"></script>
	<script src="js/ajax-form.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/imagesloaded.pkgd.min.js"></script>
	<script src="js/scrollIt.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/nice-select.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/gijgo.min.js"></script>



	<!--contact js-->
	<script src="js/contact.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.form.js"></script>
	<script src="js/jquery.validate.min.js"></script>
	<script src="js/mail-script.js"></script>


	<script src="js/main.js"></script>

	<script>
		$(function() {
			
			
			//직무 받아오기
			let positionNo = $("#getPosition").val();
			//인덱스
			let idx = positionNo % 8 == 0 ? 8 : positionNo % 8;

			if (positionNo <= 8) {
				$("div.nice-select.position").trigger("click");
				$("div.nice-select.position ul li:eq(1)").trigger("click");
				$("div.nice-select.position11").trigger("click");
				$("div.nice-select.position11 ul li:eq(" + idx + ")").trigger(
						"click");
			} else if (positionNo <= 16) {
				$("div.nice-select.position").trigger("click");
				$("div.nice-select.position ul li:eq(2)").trigger("click");
				$("div.nice-select.position21").trigger("click");
				$("div.nice-select.position21 ul li:eq(" + idx + ")").trigger(
						"click");

			} else {
				$("div.nice-select.position").trigger("click");
				$("div.nice-select.position ul li:eq(3)").trigger("click");
				$("div.nice-select.position31").trigger("click");
				$("div.nice-select.position31 ul li:eq(" + idx + ")").trigger("click");
			}
			
			//데이트 피커		
			let date = new Date();
			date.setDate(date.getDate() - 1);
			$("input[name=deadline]").datepicker({
				minDate : date,
				calendarWeeks : false,
				todayHighlight : true,
				autoclose : true,
				format : "yyyy/mm/dd",
				language : "ko"
			});
			
		});
		
		//직군 선택에 따라 view 변경
		function position(obj) {
			if (obj.value == 1) {
				$("div.position1").css("display", "block");
				$("div.position2").css("display", "none");
				$("div.position3").css("display", "none");

				$("select.position21 option:eq(0)").prop("selected", true);
				$("select.position31 option:eq(0)").prop("selected", true);

			} else if (obj.value == 2) {
				$("div.position1").css("display", "none")
				$("div.position2").css("display", "block");
				$("div.position3").css("display", "none");

				$("select.position11 option:eq(0)").prop("selected", true);
				$("select.position31 option:eq(0)").prop("selected", true);

			} else if (obj.value == 3) {
				$("div.position1").css("display", "none");
				$("div.position2").css("display", "none");
				$("div.position3").css("display", "block");
				;

				$("select.position11 option:eq(0)").prop("selected", true);
				$("select.position21 option:eq(0)").prop("selected", true);

			} else {
				$("div.position1").css("display", "none");
				$("div.position2").css("display", "none");
				$("div.position3").css("display", "none");

				$("select.position11 option:eq(0)").prop("selected", true);
				$("select.position21 option:eq(0)").prop("selected", true);
				$("select.position31 option:eq(0)").prop("selected", true);
			}
		}

		//업로드한 파일 이름 보여주기
		function upload(obj) {
			let file = obj.value.split("\\").pop();
			let display = $("label.fileName");
			display.css("display", "inline").html(file);
		}
		
		//폼 보내기
		$(".submit").click(function() {
			let pNo = "${detail.projectNo}";
			if (check() != false) {
				$.ajax({
					url : "${contextPath}/logined/modifyRec",
					method : "POST",
					enctype : "multipart/form-data",
					processData : false,
					contentType : false,
					data : new FormData($(form)[0]),
					success : function(response) {
					if (response == "success") {
						let answer = confirm("수정이 완료 되었습니다. 추가 모집을 등록하시겠습니까?");
						if (answer == true) {
							location.href = "${contextPath}/logined/add_rec?ProjectNo="	+ pNo;
							} else {
								location.href = "${contextPath}/";
								}
						} else {
							alert("등록 실패");
							}
					}
					});
				}
			return false;
			});
		
		//유효성 검사
		function check() {
			if ($("#pos option:selected").val() == 0) {
				alert("직군은 필수 입력값입니다");
				$(".nice-select.position").focus();
				$(".nice-select.position").addClass("open");
				return false;
			}
			if ($("#pos option:selected").val() == 1
					&& $("#positionNo1 option:selected").val() == 0) {
				alert("직무는 필수 입력값입니다");
				$(".nice-select.position11").focus();
				$(".nice-select.position11").addClass("open");
				return false;
			}
			if ($("#pos option:selected").val() == 2
					&& $("#positionNo2 option:selected").val() == 0) {
				alert("직무는 필수 입력값입니다");
				$(".nice-select.position21").focus();
				$(".nice-select.position21").addClass("open");
				return false;
			}
			if ($("#pos option:selected").val() == 3
					&& $("#positionNo3 option:selected").val() == 0) {
				alert("직무는 필수 입력값입니다");
				$(".nice-select.position31").focus();
				$(".nice-select.position31").addClass("open");
				return false;
			}
			if ($("input[name=deadline]").val() == "") {
				alert("마감 날짜는 필수 입력값입니다");
				$("input[name=deadline]").focus();
				return false;
			}
			if ($("input[name=headCount]").val() == "") {
				alert("모집인원을 선택해주세요");
				$("input[name=headCount]").focus();
				return false;
			}
			if ($("input[name=requirement]").val() == "") {
				alert("요구사항을 입력해주세요");
				$("input[name=requirement]").focus();
				return false;
			}
			if ($("textarea[name=recExplain]").val() == "") {
				alert("상세설명을 입력해주세요");
				$("input[name=recExplain]").focus();
				return false;
			}
		}
		
		//취소
		$(".clear").click(function (){
			let answer = confirm("수정을 취소하시겠습니까?");
			if(answer == true){
				location.href = "${contextPath}/";
			}
			return false;
		});
		
	</script>
</body>

</html>