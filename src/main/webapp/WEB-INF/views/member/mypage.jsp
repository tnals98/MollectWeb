<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/resources/css/mypage.css">
<title>마이페이지</title>
</head>
<body>
	<div id="container">
		<div id="header">
			<div id="header-layer1"></div>
			<div id="header-layer2">
				<ul id="header-top">
					<li><a href="/notice/insert.do">고객센터</a></li>
					<li><a href="/member/login.do">로그인/회원가입</a></li>
					<li><a href="/index.jsp">메인으로</a></li>
					<li><input type="text" id="serch"> <input
						type="submit" value="검색"></li>
				</ul>
			</div>
		</div>
		<div id="nav">
			<ul id="menu">
				<li><a href="/content/popularContent.html">인기순위 </a></li>
				<li><a href="#">추천</a></li>
				<li><a href="/content/endingContent.html">종료예정작 </a></li>
				<li><a href="/member/mypage.do">마이페이지</a></li>
			</ul>
		</div>


		<div id="main">
			<div id="main-layer1">
				<h3>${sessionScope.memberName }님의마이페이지</h3>
				<a href="/member/update.do"><button id="modi">정보수정</button></a> <a
					href="javascript:void(0)" onclick="checkDelete();"><button
						id="delete">탈퇴하기</button></a>
				<script>
					function checkDelete() {
						const memberId = '${sessionScope.memberId }';
						if (confirm("탈퇴하시겠습니까?")) {
							location.href = "/member/delete.do?memberId="
									+ memberId;
						}
					}
				</script>
			</div>
			<div id="main-layer2">
				<h3>
					보고싶은 영화 
					<button id="reco">&rang;</button>
				</h3>
				<img src="/resources/img/viewed/want1.jpg" width="200px"> <img
					src="/resources/img/viewed/want2.jpeg" width="200px"> <img
					src="/resources/img/viewed/want3.jpg" width="200px"> <img
					src="/resources/img/viewed/want4.jpg" width="200px">
			</div>
			<div id="main-layer3">
				<h3>
					관람한 영화
					<button id="reco">&rang;</button>
				</h3>
				<img src="/resources/img/viewed/viewed1.jpg" width="200px"> <img
					src="/resources/img/viewed/viewed2.jpeg" width="200px"> <img
					src="/resources/img/viewed/viewed3.jpg" width="200px"> <img
					src="/resources/img/viewed/viewed4.jpg" width="200px">
			</div>
		</div>


		<div id="footer"></div>
	</div>
</body>
</html>