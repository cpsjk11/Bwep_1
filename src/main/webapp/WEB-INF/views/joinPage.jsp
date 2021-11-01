<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>JoinPage</title>
    <link rel="stylesheet" href="resources/css/nicepage.css" media="screen">
<link rel="stylesheet" href="resources/css/JoinPage.css" media="screen">
    <script class="u-script" type="text/javascript" src="resources/js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="resources/js/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.29.1, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Acme:400|Noto+Sans:400,400i,700,700i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/default-logo.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="JoinPage">
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
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="membership.my" style="padding: 10px;">Home</a>
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
    <section class="u-clearfix u-section-1" id="sec-1202">
      <div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-custom-font u-text u-text-custom-color-14 u-text-1">Bwep</p>
        
        <%-- ********************* 회원가입 폼 ********************** --%>
        <div class="u-form u-form-1">
          <form action="membership_ok.my" method="POST" class="u-clearfix u-form-spacing-20 u-form-vertical u-inner-form" style="padding: 15px;" source="custom" name="joinForm">
            <div class="u-form-group u-form-name">
              <label for="name-6797" class="u-label u-label-1">아이디</label>
              <input type="text" placeholder="아이디를 입력해주세요." id="nick" name="m_nick" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-13" required="">
              <input type="hidden" id="value"/> 
              <input type="hidden" id="value2"/> 
              <input type="hidden" id="value3"/> 
              <span id="id_checkBox" class="checkBox"></span>
            </div>
            <div class="u-form-group">
              <label for="email-6797" class="u-label u-label-2">비밀번호</label>
              <input type="password" placeholder="비밀번호를 입력해주세요." id="s_pw" name="m_pw" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-13" required="required">
              <span id="pw_checkBox" class="checkBox"></span>
            </div>
            <div class="u-form-group">
              <label for="message-6797" class="u-label u-label-3">비밀번호 재확인</label>
              <input type="password" placeholder="비밀번호를 재확인해주세요." rows="4" cols="50" id="message-6797" name="u_pws" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-13" required="required"/>
              <span id="repw_checkBox" class="checkBox"></span>
            </div>
            <div class="u-form-group u-form-select u-form-group-4">
              <label for="select-1fa4" class="u-label u-label-4">성별</label>
              <div class="u-form-select-wrapper">
                <select id=m_gender name="m_gender" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-13" required="required">
                  <option value="" selected="selected" disabled="disabled">성별을 선택해주세요</option>
                  <option value="Man">남성</option>
                  <option value="Woman">여성</option>
                </select>
                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
              </div>
            </div>
            <div class="u-align-right u-form-group u-form-submit">
              <a href="join.my"
              	onclick="send(this.form)"
               class="u-border-none u-btn u-btn-round u-btn-submit u-button-style u-custom-color-12 u-custom-font u-hover-custom-color-19 u-radius-50 u-text-body-alt-color u-btn-1">회원가입<br>
              </a>
              <input type="submit" value="submit" class="u-form-control-hidden" onclick="javascript:location.href='membership.my'">
            </div>
            <input type="hidden" value="" name="recaptchaResponse">
          </form>
          <%-- ************** 회원가입 폼 ****************  --%>
          
        </div>
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
    $(function(){
		
		 $("#nick").bind("keyup",function(){
			var nick = $("#nick").val();
			// 이제 여기서 2글자 이상 누를시 서버로 비동기식 통신시작 아이디 값 비교
			if(nick.trim().length > 1){
				$.ajax({
					url:"memberships.my",
					data:"m_nick="+encodeURIComponent(nick),
					type:"post",
					dataType:"json",
				}).done(function(data){
					if(data.overlap == 1){
						$("#id_checkBox").html("사용가능").css("color","#12b886");
						$("#value").val("");
					}
					else{
						$("#id_checkBox").html("중복").css("color","red");
						$("#value").val("1"); // 아이디가 중복됬을때	
					}
				}).fail(function(err){
					
				});
			}else if(nick.trim().length < 1){
				// 사용자가 입력한 id값의 길이가 1자 미만이면 아이디가
				// box인 요소의 내용을 없앤다.
				$("#id_checkBox	").html("");
			}
		}); 
		
		$("#s_pw").bind("keyup",function(){
			var pw = $("#s_pw").val();
			var repw = $("#message-6797").val();
			console.log(pw);
			if(pw.trim().length > 0){
				$.ajax({
					url:"password.my",
					data:"m_pw="+encodeURIComponent(pw),
					type:"post",
					dataType:"json",
				}).done(function(data){
					if(data.check == 1){
						$("#pw_checkBox").html("문자열의 길이가 짧습니다.").css("color","red");
						$("#value2").val("2"); // 비밀번호가 올바르지 않을때	
					}
					else if(data.check == 2){
						$("#pw_checkBox").html("사용 가능한 비밀번호 입니다.").css("color","#12b886");
						$("#repw_checkBox").val("비밀번호를 확인해주세요.").css("color","red");	
						$("#value2").val("");
					}
					else if(data.check == 3){
						$("#pw_checkBox").html("지정한 특수기호가 없습니다.").css("color","red");
						$("#value2").val("2"); // 비밀번호가 올바르지 않을때	
					}
				}).fail(function(err){
					
				});
			}else if(pw.trim().length < 1){
				$("#pw_checkBox").html("");
			}
		});
		
    // 비밀번호 재확인 확인
	$("#message-6797").bind("keyup",function(){
		var pw = $("#s_pw").val();
		var repw = $("#message-6797").val();
		// 비교해서 서로의 값이 같다면 일치라는 문장을 넣어주자!
		if(repw == pw){
			$("#repw_checkBox").html("비밀번호가 일치합니다.").css("color","#12b886");
			$("#value3").val("");
		}
		else if(repw != pw){
			$("#repw_checkBox").html("비밀번호가 일치하지 않습니다.").css("color","red");
			$("#value3").val("3"); // 비밀번호재확인이 올바르지 않을때
			
		}
	
	});
		
		
	});
	
    
    
    
	function send(frm){
		// 위에서 히든으로 숨긴 지정한 문자열들이 있으면 회원가입을 시키지 않고 리턴한다.
		if($("#value").val() == 1){
			alert("닉네임이 중복되었습니다.");
			$("#nick").val("");
			$("#nick").focus();
			return;
		}
		if($("#value2").val() == 2){
			alert("비밀번호를 확인해주세요.");
			$("#s_pw").val("");
			$("#s_pw").focus();
			return;
		}
		if($("#value3").val() == 3){
			alert("비밀번호 재확인이 일치하지 않습니다.");
			$("#reqw").val("");
			$("#reqw").focus();
			return;
		}
		if($("#nick").val().trim().length < 1){
			alert("닉네임을 입력해주세요");
			$("#nick").val("");
			$("#nick").focus();
			return;
		}
		if($("#s_pw").val().trim().length < 1){
			alert("비밀번호를 입력해주세요");
			$("#s_pw").val("");
			$("#s_pw").focus();
			return;
		}
		if($("#message-6797").val().trim().length < 1){
			alert("비밀번호재확인을 입력해주세요");
			$("#message-6797").val("");
			$("#message-6797").focus();
			return;
		}
		if($("#m_gender").val() == 1 ){
			alert("성별을 선택해주세요");
			return;
		}
		
		
		alert("가입성공!!");
		// 회원가입!!
		frm.submit();
	}
    </script>
  </body>
</html>