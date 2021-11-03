<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="반가워요">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" href="resources/css/nicepage.css" media="screen">
<link rel="stylesheet" href="resources/css/Home.css" media="screen">
    <script class="u-script" type="text/javascript" src="resources/js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="resources/js/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.29.1, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans:400,400i,700,700i|Acme:400">
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Home">
    <meta property="og:type" content="website">
    
</head>
<body class="u-body" onload="block()">
        <jsp:include page="nav.jsp"/>
    <section class="u-align-left u-clearfix u-typography-custom-page-typography-8--Introduction u-white u-section-1" src="" id="sec-b44c">
      <div class="u-clearfix u-sheet u-sheet-1">
        <img class="u-image u-image-default u-preserve-proportions u-image-1" src="resources/images/body_text_l-3-ld.svg" alt="" data-image-width="1031" data-image-height="650" data-animation-name="pulse" data-animation-duration="2500" data-animation-delay="250" data-animation-direction="">
        <div class="u-container-style u-group u-group-1">
	        <%-- ************** 로그인 성공 시 ****************--%>
	        <c:if test="${fn:length(sessionScope.log) > 0}">
				<div id="login_sc" 
				style="display: none; margin-top: 80px;
				margin-left: 45px;">
					<span id="sc_text" class="u-custom-font u-text u-text-default u-text-1" style="color: #008f7a;">${sessionScope.log }</span>
					<h3 class="u-custom-font u-text u-text-default u-text-2">반가워요!</h3><br/>
					<h3 class="u-custom-font u-text u-text-default u-text-2">bmi지수 : ###</h3><br/><br/><br/>
					<a href="bmiPage.my" class="u-border-none u-btn u-btn-round u-button-style u-hover-custom-color-18 u-palette-2-base u-radius-50 u-btn-2">bmi검사하러가기</a>
				</div>
			</c:if>
				<%-- ************** 로그인 성공 시 끝****************--%>
            <c:if test="${fn:length(sessionScope.log) < 1}">
	          <div id="topBox" class="u-container-layout">
	            <h1 class="u-custom-font u-text u-text-default u-text-1">Bwep</h1>
	            <div class="u-border-4 u-border-palette-3-base u-line u-line-horizontal u-line-1"></div>
	            <h3 class="u-text u-text-default u-text-2">서비스를 이용하기 위해서<br>로그인을 해주세요!
	            </h3>
            <%-- ************** 로그인 폼 ***************** --%>
            <div class="u-form u-login-control u-form-1">
              <form action="login.my" method="POST" class="u-clearfix u-form-custom-backend u-form-spacing-35 u-form-vertical u-inner-form" source="custom" name="form-2" style="padding: 10px;">
                <div class="u-form-group u-form-name">
                  <label for="username-708d" class="u-form-control-hidden u-label"></label>
                  <input type="text" placeholder="닉네임을 입력해주세요." id="nick" name="username" class="u-grey-5 u-input u-input-rectangle" required="">
                </div>
                <div class="u-form-group u-form-password">
                  <label for="password-708d" class="u-form-control-hidden u-label"></label>
                  <input type="password" placeholder="비밀번호를 입력해주세요." id="pwd" name="password" class="u-grey-5 u-input u-input-rectangle" onkeyup="enter()">
                </div>
                <div class="u-form-checkbox u-form-group u-form-group-3">
                  <input type="checkbox" id="checkbox-708d" name="remember" value="On">
                  <label for="checkbox-708d" class="u-label">아이디 저장하기</label>
                </div>
                <div class="u-align-right u-form-group u-form-submit">
                  <a href="#" class="u-border-none u-btn u-btn-submit u-button-style u-none u-btn-1">
                    <br>
                  </a>
                  <input type="submit" value="submit" class="u-form-control-hidden">
                </div>
                <input type="hidden" value="" name="recaptchaResponse">
              </form>
            </div>
            <a href="joinPage.my" class="u-border-none u-btn u-btn-round u-button-style u-hover-custom-color-18 u-palette-2-base u-radius-50 u-btn-2">회원가입</a>
            <a href="javascript:login()" class="u-btn u-btn-round u-button-style u-custom-color-7 u-custom-font u-heading-font u-hover-custom-color-8 u-radius-50 u-text-body-alt-color u-btn-3">로그인</a>
          </div>
          </c:if>
        </div>
            <%-- ************** 로그인 폼 끝 ***************** --%>
			
        <img class="u-image u-image-default u-preserve-proportions u-image-2" src="resources/images/21.svg" alt="" data-image-width="2000" data-image-height="2000" data-animation-name="pulse" data-animation-duration="2500" data-animation-delay="500" data-animation-direction="">
        <h1 class="u-custom-font u-text u-text-default u-text-3">Bmi</h1>
        <p class="u-large-text u-text u-text-variant u-text-4"> 체질량지수는 자신의 몸무게(kg)를 키의 제곱(m)으로 나눈 값입니다.<br>
          <br>체질량지수는 근육량, 유전적 원인, 다른 개인적 차이를&nbsp;<br>반영하지 못하는 단점이 있음에도 불구하고<br>조사자들이나 의료인들이 가장 많이 쓰는 방법 중 하나입니다.
        </p>
        <img class="u-image u-image-default u-preserve-proportions u-image-3" src="resources/images/152-8.png" alt="" data-image-width="1122" data-image-height="1122" data-animation-name="pulse" data-animation-duration="2500" data-animation-delay="500" data-animation-direction="">
        <h3 class="u-text u-text-5">저도 비만인가요?</h3>
        <h6 class="u-text u-text-6"> 다양한 질병을 부르는 비만을 간단하게 키와 체중만 알아도 진단하는 방법에는 체질량지수 계산법, 체중대비 백분율이 있습니다.<br>
        </h6>
        <c:if test="${sessionScope.log ne null }">
	        <a class="top_btn u-border-none u-btn u-btn-round u-button-style u-custom-color-5 u-hover-custom-color-15 u-radius-35 u-btn-4"
	        id="top_btn" >bmi지금 확인해보기</a><!-- onclick="window.scrollTo(0,0);" -->
        </c:if>
      </div>
    </section>
    <jsp:include page="foot.jsp"/>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>

	function enter(){
		if (window.event.keyCode == 13) {
	    	// 엔터키가 눌렸을 때
	    	return;
	    }
	}

	// 페이지 로딩 완료시 로그인 비 로그인 둘다 DIV보여주기!!
	function block(){
		$("#login_sc").css("display","block");		
		$("#topBox").css("display" ,"block");
	}
	
	function login(){
		
		// 비동기식을 이용한 로그인!!
		var id = $("#nick").val();
		var pwd = $("#pwd").val();
		
		if(id.trim().length <= 0){
			alert("닉네임을 입력해주세요.");
			$("#nick").val("");
			$("#nick").focus();
			return;
		}
		if(pwd.trim().length <= 0){
			alert("비밀번호를 입력해주세요.");
			$("#pwd").val("");
			$("#pwd").focus();
			return;
		}
		
		var param = "m_nick="+encodeURIComponent(id)+"&m_pw="+encodeURIComponent(pwd);
		$.ajax({
			url:"login.my",
			data:param,
			type:"post",
			dataType:"json"
		}).done(function(data){
			if(data.value == 1){
				 alert(data.success+"환영합니다!!");
				$("#sc_text").html(data.success+"님");
				location.href="/my";
			}
				if(data.value == 2){
				alert(data.fail);
				$("#nick").val(id);
				$("#pwd").val("");
				
			}
		}).fail(function(err){
			alert("문제발생!!!");
		});
	}
</script>
</body>
</html>