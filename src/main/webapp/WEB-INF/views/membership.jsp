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
	<label for="nick">닉네임</label><div id="box"></div>
	<input id="nick" name="m_nick"/>
	<button type="button" onclick="addjoin()">회원가입</button>
	
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>
	$(function(){
		$("#nick").bind("keyup",function(){
			var nick = $("#nick").val();
			console.log(nick+"go");
			// 이제 여기서 2글자 이상 누를시 서버로 비동기식 통신시작 아이디 값 비교
			if(nick.trim().length > 1){
				$.ajax({
					uri:"membership.my",
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
	});
	
</script>
</body>
</html>