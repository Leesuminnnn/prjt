<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Home</title>
<script src="https://kit.fontawesome.com/6c060c00b1.js"
	crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

</head>
<body class="text-center">
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
	<a class="navbar-brand" href="${pageContext.request.contextPath}/">Logo</a>
	<!-- 모바일때 표시되는 메뉴 버튼(PC 버젼에서는 보이지 않는다.)  -->
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<!-- 메인 메뉴 아이템 -->
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<!-- Home 메뉴 -->
			<li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath}/board/List.do">공지사항
					<span class="sr-only">(current)</span>
			</a></li>
			<!-- Link 메뉴 -->
			<c:choose>
				<c:when test="${sessionScope.userid != null}">
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/member/Logout.do">로그아웃</a></li>
				</c:when>
				<c:otherwise>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/member/Join.do">회원가입</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/member/Login.do">로그인</a></li>
				</c:otherwise>
			</c:choose>
			
			<!-- Dropdown 메뉴 -->
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> Dropdown </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">Action</a> <a
						class="dropdown-item" href="#">Another action</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Something else here</a>
				</div></li>
				<c:if test="${sessionScope.userid != null}">
					<li class="nav-item">
						<div class="nav-item">${sessionScope.userid}(${sessionScope.name})님 환영합니다</div>
					</li>
				</c:if>
		</ul>
	</div>
</nav>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	a
</body>
</html>
