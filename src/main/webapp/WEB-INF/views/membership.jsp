<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<body class="u-body"><header class="u-clearfix u-custom-color-5 u-header u-header" id="sec-b9b0"><div class="u-clearfix u-sheet u-sheet-1">
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse u-custom-font" style="font-size: 1.25rem; letter-spacing: 0px; font-weight: 700; font-family: Acme;">
            <a class="u-button-style u-custom-active-border-color u-custom-active-color u-custom-border u-custom-border-color u-custom-borders u-custom-hover-border-color u-custom-hover-color u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-active-color u-custom-text-color u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;"><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-custom-font u-nav u-spacing-20 u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-border-active-palette-1-base u-border-hover-palette-1-base u-button-style u-nav-link u-text-hover-palette-2-base u-text-white" href="membership.my" style="padding: 10px;">Home</a>
</li><li class="u-nav-item"><a class="u-border-active-palette-1-base u-border-hover-palette-1-base u-button-style u-nav-link u-text-hover-palette-2-base u-text-white" href="About.html" style="padding: 10px;">About</a>
</li><li class="u-nav-item"><a class="u-border-active-palette-1-base u-border-hover-palette-1-base u-button-style u-nav-link u-text-hover-palette-2-base u-text-white" href="joinPage.my" style="padding: 10px;">JoinPage</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.html" style="padding: 10px;">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="About.html" style="padding: 10px;">About</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="joinPage.my" style="padding: 10px;">JoinPage</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <p class="u-custom-font u-text u-text-1">Bwep</p>
      </div></header> 
    <section class="u-align-left u-clearfix u-typography-custom-page-typography-8--Introduction u-white u-section-1" src="" id="sec-b44c">
      <div class="u-clearfix u-sheet u-sheet-1">
        <img class="u-image u-image-default u-preserve-proportions u-image-1" src="resources/images/body_text_l-3-ld.svg" alt="" data-image-width="1031" data-image-height="650" data-animation-name="pulse" data-animation-duration="2500" data-animation-delay="250" data-animation-direction="">
        <div class="u-container-style u-group u-group-1">
	        <%-- ************** 로그인 성공 시 ****************--%>
			<div id="login_sc" 
			style="display: none; margin-top: 80px;
			margin-left: 45px;">
				<span id="sc_text" class="u-custom-font u-text u-text-default u-text-1" style="color: #008f7a;"></span>
				<h3 class="u-custom-font u-text u-text-default u-text-2">반가워요!</h3><br/>
				<h3 class="u-custom-font u-text u-text-default u-text-2">bmi지수 : ###</h3><br/><br/><br/>
				<a href="#" class="u-border-none u-btn u-btn-round u-button-style u-hover-custom-color-18 u-palette-2-base u-radius-50 u-btn-2">bmi검사하러가기</a>
			</div>
				<%-- ************** 로그인 성공 시 끝****************--%>
          <div id="topBox" class="u-container-layout">
            <h1 class="u-custom-font u-text u-text-default u-text-1">Bwep</h1>
            <div class="u-border-4 u-border-palette-3-base u-line u-line-horizontal u-line-1"></div>
            <h3 class="u-text u-text-default u-text-2">서비스를 이용하기 위해서<br>로그인을 해주세요!
            </h3>
            <%-- ************** 로그인 폼 ***************** --%>
            
            <div class="u-form u-login-control u-form-1">
              <form action="#" method="POST" class="u-clearfix u-form-custom-backend u-form-spacing-35 u-form-vertical u-inner-form" source="custom" name="form-2" style="padding: 10px;">
                <div class="u-form-group u-form-name">
                  <label for="username-708d" class="u-form-control-hidden u-label"></label>
                  <input type="text" placeholder="닉네임을 입력해주세요" id="nick" name="username" class="u-grey-5 u-input u-input-rectangle" required="">
                </div>
                <div class="u-form-group u-form-password">
                  <label for="password-708d" class="u-form-control-hidden u-label"></label>
                  <input type="password" placeholder="비밀번호를 입력해주세요" id="pwd" name="password" class="u-grey-5 u-input u-input-rectangle" required="">
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
        <!-- <a class="top_btn u-border-none u-btn u-btn-round u-button-style u-custom-color-5 u-hover-custom-color-15 u-radius-35 u-btn-4"
        id="top_btn" >bmi지금 확인해보기</a>onclick="window.scrollTo(0,0);" -->
      </div>
    </section>
    
    
    <footer class="u-clearfix u-footer u-grey-60" id="sec-c919"><div class="u-clearfix u-sheet u-sheet-1">
        <a href="https://nicepage.com" class="u-image u-logo u-image-1">
          <img src="resources/images/default-logo.png" class="u-logo-image u-logo-image-1">
        </a>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse">
            <a class="u-button-style u-nav-link" href="#">
              <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;"><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
            </a>
          </div>
          <div class="u-nav-container">
            <ul class="u-nav u-unstyled"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.html">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="About.html">About</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="JoinPage.html">JoinPage</a>
</li></ul>
          </div>
          <div class="u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.html">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="About.html">About</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="JoinPage.html">JoinPage</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
        <span>Website Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="" target="_blank">
        <span>Website Builder Software</span>
      </a>. 
    </section>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>
	
	function login(frm){
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
				$("#sc_text").text(data.success+"님");
				$("#login_sc").css("display","block");		
				$("#topBox").css("display" ,"none");
			}
				if(data.value == 2){
				alert(data.fail);
				$("#nick").val("");
				$("#pwd").val("");
				$("#topBox").css("display" ,"block");
				$("#login_sc").css("display","none");
			}
		}).fail(function(err){
		
		});
	}
</script>
</body>
</html>