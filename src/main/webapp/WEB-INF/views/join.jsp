<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>전국노래자랑</title>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
<script src="<c:url value='/resources/js/common.js'/>" charset="utf-8"></script>
<link href="<c:url value="/resources/css/indexstyle.css" />" rel="stylesheet">
</head>
<body>
<script type="text/javascript">
	// 페이지 로딩이 완료되고, jQuery 스크립트 실행된다
	$(document).ready(function() {
		$('#brth').datepicker({
			dateFormat: 'yymmdd',	
			numberOfMonths : 1,
			changeMonth : true,
			changeYear : true
		});
	
		fn_PreSave = function() {
			
			if(gfn_isNull($("#userid").val())) {
				alert("아이디를 입력하세요");
				return false;
			}
		
			
			if($("#passwd").val().length < 4) {
				alert("비밀번호는 네자리 이상 입력해 주세요s");
				return false;
			}
		
			if(!gfn_isKor($("#username").val())) {
				alert("이름엔 한글만 입력하세요");
				return false;
			}
			
			if(!gfn_isPhoneNumber($("#phone").val())) {
				alert("핸드폰번호 형식에 맞게 입력하세요");
				return false;
			}
			
			if(!gfn_isEmail($("#email").val())) {
				alert("이메일 형식에 맞게 입력하세요");
				return false;
			}
			
			if(!gfn_isNumber($("#brth").val())) {
				alert("생년월일에 숫자만 입력하세요");
				return false;
			}
			
			if(gfn_isNull($("input[name=imgFile]")[0].files[0])) {
				alert("사진을 입력하세요");
				return false;
			}
			
			return true;
		}
		
		// 저장 버튼을 클릭할때 이벤트 발생
		$("#save").on("click", function(e) {

			if(!fn_PreSave()) {
				return ;
			}
			
			$("#form").submit();
	
 		});
	});
</script>

	<div class="container">
		<header>
			<h1>
				전국노래자랑에 오신 것을 환영합니다.<span><br>당신의 꿈을 노래하세요</span>
			</h1>

		</header>
		<section>
			<div id="container_demo">
				<div id="wrapper">
					<div id="login" class="animate form">
						<h4>회원 정보를 입력해 주세요</h4>
						<form id="form" method="post" enctype="multipart/form-data" action="/common/sm01insert.do">
							아이디:<input type="text" id="userid" name="userid"  maxlength="12"> <br>
							<br> 비밀번호:<input type="password" id="passwd" name="passwd"  maxlength="10"> 
							<br> 이름:<input	type="text" id="username" name="username"  maxlength="6">
							<br> 전화번호:<input type="text" id="phone" name="phone"  maxlength="14">
							<br> 생년월일:<input type="text" id="brth" name="brth" maxlength="8">
							<br> 이메일:<input type="text" id="email" name="email" maxlength="20">
							<br>
							<button id="save" type="button" >저장</button>
							<input id="fileInput" type="file" name="imgFile" />
						</form>

					</div>

				</div>
			</div>
		</section>
	</div>
</body>
</html>