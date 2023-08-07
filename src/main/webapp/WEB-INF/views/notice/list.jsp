<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/resources/css/list.css">
<title>문의사항 목록</title>
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
				<h3>문의 목록</h3>
			</div>

			<div id="main-layer2">
				<table>
					<colgroup>
						<col width="10%">
						<col width="35%">
						<col width="10%">
						<col width="25%">
					</colgroup>
					<thead>
						<tr>
							<th>글번호</th>
							<th>글제목</th>
							<th>글쓴이</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="notice" items="${requestScope.nList }">
							<tr>
								<td>${notice.noticeNo }</td>
								<td><a
									href="/notice/detail.do?noticeNo=${notice.noticeNo }">${notice.noticeSubject }</a></td>
								<td>${notice.noticeWriter}</td>
								<td>${notice.noticeDate }</td>
							</tr>
						</c:forEach>
						<tr>
							<td colspan="5" align="center">${pageNavi }</td>
						</tr>
					</tbody>
				</table>
			</div>





		</div>

		<div id="footer"></div>
	</div>
</body>
</html>