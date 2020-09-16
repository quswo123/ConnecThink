<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>모집등록</title>
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

.position, .position11, .position21 , .position31 {
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
	
	
</style>

</head>

<body>
	<!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

	<!-- header-start -->
	<header>
		<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	</header>
	<!-- header-end -->

	<!-- bradcam_area  -->
	<div class="bradcam_area bradcam_bg_1">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="bradcam_text">
						<h3>모집등록</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/ bradcam_area  -->

	<div class="job_details_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<div class="apply_job_form white-bg mt-0">
						<h4>모집 등록하기</h4>
						<form action="#">
							<div class="row">
								<div class="col-md-2">
									<h5 class="mt-3" style="font-weight: bold;">모집분야</h5>
								</div>
								<div class="col-md-5 ">
									<div class="input_field text-center position0">
										<select name="position0" class="position"  onchange="position(this);" required>
											<option value=""  selected>직군선택</option>
											<option value="1">기획자</option>
											<option value="2">디자이너</option>
											<option value="3">개발자</option>
										</select>
									</div>
								</div>
								<div class="col-md-5">
									<div class="input_field position1"  style="display: none;">
										<select class="position11"  onchange="position_p(this);">
											<option value="" >직무선택</option>
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
									<div class="input_field position2"  style="display: none;">
										<select class="position21" onchange="position_ds(this);">
											<option value="" >직무선택</option>
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
									<div class="input_field position3"  style="display: none;">
										<select class="position31"  onchange="position_dv(this);">
											<option value="" >직무선택</option>
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
									<h5 class="mt-3" style="font-weight: bold;">모집인원</h5>
								</div>
								<div class="col-md-10">
									<div class="input_field">
										<input type="number" placeholder="1" min="1" max="10" required>
									</div>
								</div>
								<div class="col-md-2">
									<h5 class="mt-3" style="font-weight: bold;">모집기한</h5>
								</div>
								<div class="col-md-10">
									<div class="input_field">
										<input type="date" class="pr-2" required>
									</div>
								</div>
								<div class="col-md-2">
									<h5 class="mt-3" style="font-weight: bold;">요구사항</h5>
								</div>
								<div class="col-md-10">
									<div class="input_field">
										<input type="text" placeholder="EX) 브랜딩 / 공모전 경험 / SPRING BOOT 사용 가능자" required>
									</div>
								</div>
								<div class="col-md-2">
									<h5 class="mt-3" style="font-weight: bold;">상세설명</h5>
								</div>
								<div class="col-md-10">
									<div class="input_field">
										<textarea name="#" id="" cols="30" rows="10"
											placeholder="자유롭게 기재 해주세요" required></textarea>
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
											<input type="file" class="custom-file-input"  id="inputGroupFile03"  aria-describedby="inputGroupFileAddon03" accept="image/*"  onchange="upload(this);">
												 <label class="custom-file-label" for="inputGroupFile03">Upload</label>
												 <label class="fileName ml-2 mb-0" style="position: absolute; left: 7%; display: none;">위치테스트</label>
										</div>
									</div>
									<span style="color:#7A838B;">※미 등록 시 기본 이미지 사용</span>
								</div>
								<div class="col-md-12">
									<div class="submit_btn text-center">
										<button class="boxed-btn3 mr-1" >취소하기</button>
										<button class="boxed-btn3" type="submit">등록하기</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

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
	
	function position(obj){
		if(obj.value == 1){
			$("div.position1").css("display","block");
			$("div.position2").css("display","none");
			$("div.position3").css("display","none");
		} else if(obj.value == 2) {
			$("div.position1").css("display","none")
			$("div.position2").css("display","block");
			$("div.position3").css("display","none");
		} else if(obj.value == 3) {
			$("div.position1").css("display","none");
			$("div.position2").css("display","none");
			$("div.position3").css("display","block");
		} else {
			$("div.position1").css("display","none");
			$("div.position2").css("display","none");
			$("div.position3").css("display","none");
		}
	}
    
	function position_p(obj){
		alert(obj.value);
	}
	
	function position_ds(obj){
		alert(obj.value);
	}
	
	function position_dv(obj){
		alert(obj.value);
	}
	
	function upload(obj){
		let file = obj.value.split("\\").pop();
		let display = $("label.fileName");
		display.css("display", "inline").html(file);
	}


		
		</script>
</body>

</html>