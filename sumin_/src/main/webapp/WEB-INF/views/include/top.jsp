<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<!-- 검색 메뉴 -->
		<form class="form-inline my-2 my-lg-0 input-group">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</div>
</nav>
<div class="pb-5"></div>
<div class="pb-5"></div>
<div class="pb-5"></div>