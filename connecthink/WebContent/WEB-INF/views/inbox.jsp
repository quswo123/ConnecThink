<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>메세지함</title>
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
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/slicknav.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->

	<style>
.inbox_area {
	background: #F5F7FA;
}
.inbox_container {
	width: 80%;
	margin-left: auto;
	margin-right: auto;
}
.fromWho {
	background-color: #fff;
	height: 700px;
	overflow: hidden;
}
.searchWho {
	padding-top: 10px;
	padding-bottom: 20px;
	background-color: #38a4ff;
}
.manageMsgBtn {
	color: #fff;
	width: 50%;
	height: 50px;
	background: none;
	border: none;
}
.searchWhoBar .icon {
    position: absolute;
    right: 20px;
    top: 60px;
    line-height: 40px;
    z-index: 3;
}
.searchWhoBar .single-input {
    padding-right: 45px;
}
.list_wrap {
	max-height: 504px;
	overflow: auto;
}
ul.list>li {
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
    border-bottom: 1px solid #f0e9ff;
/*     text-align: center; */
}
.system {
	width: 100%;
	background-color: #E0F2F7;
	text-align: center;
	font-weight: 500;
	font-size: 1.5em;
	padding: 15px 10px 15px 10px;
	cursor: pointer;
	transition: all 0.3s ease 0s;
}
.person {
	padding: 20px 0px 20px 0px;
	cursor: pointer;
	transition: all 0.3s ease 0s;
	text-overflow: ellipsis;
}
.person:hover, .system:hover {
	color: #0056b3;
	font-weight: 1000;
}
.msgPreview {
	padding-left: 10px;
	font-size: 0.9em;
}
.customerNo {
	display: none;
}
.new {
	color: #fff;
	background: #ff5e13;
	border-radius: 20px;
	font-size: 0.8em;
	margin-left: 10px;
	padding: 5px;
	transition: all 0s ease 0s;
}
.message {
	height: 700px;
	background-color: #fff;
	box-shadow: 0px 10px 20px 0px rgba(221, 221, 221, 0.3);
}
.msg_header {
	position: absolute;
    top: 0;
    right: 0;
    left: 0;
    z-index: 5;
    padding: 28px 0 28px 14px;
    border-bottom: 1px solid #dfe1e2;
    background-color: rgba(256,256,256,0.95);
}
.msg_sender>img {
	padding-left: 20px;
	height: 50px;
}
.personName {
	padding-left: 20px;
	font-size: 1.2em;
	font-weight: 800;
}
.message .content {
	height: 560px;
}
.msg_body {
	height: 100%;
	padding-top: 130px;
	overflow: auto;
}
.receive_msg, .send_msg {
	display:inline-block;
	border-radius: 50px;
	padding: 15px;
	font-size: 1em;
	margin-bottom: 15px;
	max-width: 80%;
}
.receive_msg {
	float: left;
	border: 1px solid #F2F2F2;
	background-color: #F2F2F2;
	margin-left: 30px;
	margin-right: 10px;
}
.send_msg {
	float: right;
	border: 1px solid #00D363;
	background-color: #00D363;
	color: #fff;
	margin-right: 30px;
	margin-left: 10px;
}
.msg_date {
	text-align: center;
	text-decoration: underline;
	margin-bottom: 10px;
}
.receive_time, .send_time {
	margin-top:25px;
	font-size:0.8em;
	color:#A4A4A4;
}
.send_time {
	float:right;
}
.message .send {
	height: 120px;
	padding-bottom: 20px;
}
.writeMsg{
	width: 85%;
	padding: 20px;
}
.sendMsg {
	width: 15%;
	padding: 20px 20px 20px 0px;
}
.send-btn {
	width: 100%;
	height: 100%;
	color: #ff5e13;
	background-color: #fff;
	border: 1px solid #ff5e13;
	border-radius: 5px;
	text-align: center;
	text-decoration: none;
	font-weight: 500;
	cursor: pointer;
	transition: all 0.3s ease 0s;
	padding: 8px 20px 8px 20px;
}
.send-btn:hover {
	color: #fff;
	background: #ff5e13;
	border: 1px solid transparent;
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
                        <h3>메세지함</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ bradcam_area  -->


    <!--================inbox Area =================-->
    <section class="inbox_area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-3 fromWho">
                	<div class="row">
                	<div class="col-12 searchWho">
                		<button class="manageMsgBtn">모두 읽음</button><button class="manageMsgBtn">삭제하기</button>
                		<div class="searchWhoBar">
                			<div class="icon"><i class="fa fa-search" aria-hidden="true"></i></div>
							<input type="text" name="who" placeholder="대화 상대 검색" onfocus="this.placeholder = ''"
								onblur="this.placeholder = '대화 상대 검색'" required class="single-input">
						</div>
                	</div>
                	</div>
                    <div class="row">
                    	<div class="system">커넥띵크 알림<span class="new">1</span></div>
                    	<div class="col-12 list_wrap">
                    		<ul class="list cat-list personList">
                    			<li class="person"><span class="customerNo"></span>테스트<span class="new">7</span></li>
                    		</ul>
                    	</div>
                    </div>
                </div>
                <div class="col-9 mb-5 mb-lg-0">
                    <div class="row">
                    	<div class="col-12 message">
                    		<div class="row">
                    			<div class="col-12 content">
                    			    <div class="msg_header">
                    					<div class="msg_sender">
                    						<img src="img/person.png"><span class="customerNo"></span><span class="personName">고디바</span>
                    					</div>
                    				</div>
                    				<div class="msg_body">
                    					<div class="receive_msg">테스트.</div>
                    					<div style="clear:both;"></div>
                    				</div>
                    			</div>
                    			<div class="col-12 send">
                    				<div class="row">
                    				<div class="writeMsg">
                    					<textarea class="single-textarea" placeholder="Message" onfocus="this.placeholder = ''"
													onblur="this.placeholder = 'Message'" required></textarea>
                    				</div>
                    				<div class="sendMsg">
                    					<button class="send-btn">전송</button>
                    				</div>
                    				</div>
                    			</div>
                    		</div>
                    	</div>
                    </div>
				</div>
            </div>
        </div>
    </section>
    <!--================Blog Area =================-->

    <!-- footer start -->
    <footer class="footer">
		<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
    </footer>
    <!--/ footer end  -->


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
var $listSection = $("ul.list");
var $otherInfoSection = $(".msg_sender");
var $msgSection = $(".msg_body");
var $notiCnt = $(".system>.new");
var testCustomer = 101;
//------------- 페이지 로드되자마자 목록 불러오고 알림 보여주기 ------------
fxLoadInbox(testCustomer);
fxLoadNotiCnt(testCustomer);
fxLoadNoti(testCustomer);
fxLoadAllPm(testCustomer);

//------------------------ 클릭 이벤트 -------------------------
$listSection.on("click","li.person",function(e){
	let otherNo = $(this).find("span.customerNo").html();
 	fxLoadMSGs(testCustomer, otherNo);
	return false;
});

$(".system").click(function(e){
	fxLoadNoti(testCustomer);
	return false;
});

//-------------------------- 함수 ----------------------------
//메세지함 목록을 불러오는 함수
function fxLoadInbox(customerNo){
	$.ajax({
		url:"${contextPath}/inbox/loadPerson"
		,method:"GET"
			//{managerNo : ${sessionScope.loginInfo},
		,data: {customerNo : customerNo,
			${_csrf.parameterName} : '${_csrf.token}'}
		,success:function(personList){
			let sectionData = "";
			personList.forEach(function(person, index){
				sectionData += '<li class="person"><span class="customerNo">' + person.send.customerNo + '</span>';
				sectionData += '<span class="personName">' + person.send.name + '</span>';
				sectionData += '<span class="new">ㅎ</span>';
				sectionData += '<br><span class="msgPreview">' + person.content + '</span></li>';
			});
			$listSection.html(sectionData);
		}
	});
}

//특정 회원과 나눈 메세지를 불러오는 함수
function fxLoadMSGs(customerNo, otherNo){
	$.ajax({
		url:"${contextPath}/inbox/loadMSGs"
		,method:"GET"
			//{customerNo : ${sessionScope.loginInfo},
		,data: {customerNo : customerNo,
			otherNo : otherNo,
			${_csrf.parameterName} : '${_csrf.token}'}
		,success:function(MSGs){
			let otherData = "";
			otherData += '<img src="img/person.png"><span class="customerNo">' + otherNo + '</span>';
			let first_msg = MSGs[Object.keys(MSGs)[0]];
			if(first_msg.receive.customerNo == otherNo){
				otherData += '<span class="personName">' + first_msg.receive.name + '</span>';
			} else {
				otherData += '<span class="personName">' + first_msg.send.name + '</span>';
			}
			let sectionData = "";
			let newDate = new Date(0);
			MSGs.forEach(function(msg, index){
				let sendDate = new Date(msg.createDate);
				if(newDate.getFullYear() != sendDate.getFullYear() || newDate.getMonth() != sendDate.getMonth() || newDate.getDate() != sendDate.getDate()){
					sectionData += '<div class="msg_date">' + sendDate.getFullYear()+"."+(sendDate.getMonth()+1)+"."+sendDate.getDate() + "</div>";
					newDate = sendDate;
				}
				if(msg.receive.customerNo == customerNo) {
					sectionData += '<div class="receive_msg">' + msg.content + '</div>';
					sectionData += '<div class="receive_time">' + sendDate.getHours() +':'+ sendDate.getMinutes() + '</div>';
					sectionData += '<div style="clear:both;"></div>';
				} else {
					sectionData += '<div class="send_msg">' + msg.content + '</div>';
					sectionData += '<div class="send_time">' + sendDate.getHours() +':'+ sendDate.getMinutes() + '</div>';
					sectionData += '<div style="clear:both;"></div>';
				}
			});
			$otherInfoSection.html(otherData);
			$msgSection.html(sectionData);
		}
	});
}
	
//읽지않은 notification의 갯수를 불러오는 함수
function fxLoadNotiCnt(customerNo){
	$.ajax({
		url:"${contextPath}/inbox/unreadNoti"
		,method:"GET"
			//{customerNo : ${sessionScope.loginInfo},
		,data: {customerNo : customerNo,
			${_csrf.parameterName} : '${_csrf.token}'}
		,success:function(count){
			$notiCnt.html(count);
		}
	});
}
	
//내가 받은 notification 전체를 불러오는 함수
function fxLoadNoti(customerNo){
	$.ajax({
		url:"${contextPath}/inbox/allNoti"
		,method:"GET"
			//{customerNo : ${sessionScope.loginInfo},
		,data: {customerNo : customerNo,
			${_csrf.parameterName} : '${_csrf.token}'}
		,success:function(noties){
			let otherData = '<img src="img/person.png"><span class="personName">컨넥띵크</span>';
			let sectionData = "";
			let newDate = new Date(0);
			noties.forEach(function(noti, index){
				let sendDate = new Date(noti.notifyDate);
				if(newDate.getFullYear() != sendDate.getFullYear() || newDate.getMonth() != sendDate.getMonth() || newDate.getDate() != sendDate.getDate()){
					sectionData += '<div class="msg_date">' + sendDate.getFullYear()+"."+(sendDate.getMonth()+1)+"."+sendDate.getDate() + "</div>";
					newDate = sendDate;
				}
				sectionData += '<div class="receive_msg">' + noti.content + '</div>';
				sectionData += '<div class="receive_time">' + sendDate.getHours() +':'+ sendDate.getMinutes() + '</div>';
				sectionData += '<div style="clear:both;"></div>';
			});
			$otherInfoSection.html(otherData);
			$msgSection.html(sectionData);
		}
	});
}
	
//내가 주고 받은 personal message 전체를 불러오는 함수
function fxLoadAllPm(testNo){
   	$.ajax({
   		url:"${contextPath}/inbox/allPm"
   		,method:"GET"
   			//{customerNo : ${sessionScope.loginInfo},
   		,data: {customerNo : testNo,
   			${_csrf.parameterName} : '${_csrf.token}'}
   		,success:function(personalMsgsObj){
    		let personalMsgs = JSON.stringify(personalMsgsObj);
    		console.log(typeof(personalMsgs));
    		console.log(personalMsgs);
			wSocket.send(personalMsgs);
		}
	});
}
</script>
</body>
</html>