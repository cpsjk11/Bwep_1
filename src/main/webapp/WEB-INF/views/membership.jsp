<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="membership_ok.my">
	<label for="nick">닉네임</label><div id="box"></div>
	<input id="nick" name="m_nick" /><br/>
	<label for="s_pw">비밀번호</label><div id="box2"></div>
	<input type="password" id="s_pw" name="m_pw"/><br/>
	<button type="button" onclick="send(this.form)">회원가입</button>
	</form>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>
	$(function(){
		
		 $("#nick").bind("keyup",function(){
			var nick = $("#nick").val();
			console.log(nick+"go");
			// 이제 여기서 2글자 이상 누를시 서버로 비동기식 통신시작 아이디 값 비교
			if(nick.trim().length > 1){
				$.ajax({
					url:"memberships.my",
					data:"m_nick="+encodeURIComponent(nick),
					type:"post",
					dataType:"json",
				}).done(function(data){
					if(data.overlap == 1)
						$("#box").html("사용가능");
					else
						$("#box").html("중복");
				}).fail(function(err){
					
				});
			}else{
				// 사용자가 입력한 id값의 길이가 4자 미민이면 아이디가
				// box인 요소의 내용을 없앤다.
				$("#box").html("");
			}
		}); 
		
		$("#s_pw").bind("keyup",function(){
			var pw = $("#s_pw").val();
			console.log(pw);
			if(pw.trim().length > 0){
				$.ajax({
					url:"password.my",
					data:"m_pw="+encodeURIComponent(pw),
					type:"post",
					dataType:"json",
				}).done(function(data){
					if(data.check == 1)
						$("#box2").html("문자열의 길이가 짧습니다.");
					else if(data.check == 2)
						$("#box2").html("사용 가능한 비밀번호 입니다.");
					else if(data.check == 3){
						$("#box2").html("지정한 특수기호가 없습니다.");
						
					}
				}).fail(function(err){
					
				});
			}
		});
		
		
	});
	
	function send(frm){
		if($("#nick").val().trim().length < 1){
			alert("닉네임을 입력해주세요");
			$("#nick").val("");
			$("#nick").focus();
			return;
		}
		if($("#u_pw").val().trim().length < 1){
			alert("비밀번호를 입력해주세요");
			$("#u_pw").val("");
			$("#u_pw").focus();
			return;
		}
		if($("#u_pws").val().trim().length < 1){
			alert("비밀번호재확인을 입력해주세요");
			$("#u_pws").val("");
			$("#u_pws").focus();
			return;
		}
		
		// 회원가입!!
		frm.submit();
	}
</script>
</body>
</html>