<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board</title>
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
<body class="center">
<c:import url="../include/top.jsp"/>
<div class="container">
보드 리스트
<table class="table table-hover">
	<tbody>
		<tr class="table-header">
			<td>번호</td>
			<td>제목</td>
			<td>작성일</td>
			<td>작성자</td>
		</tr>
		<c:forEach var="list" items="${list}">
		<tr>
			<td>${list.bidx}</td>
			<td>${list.title}</td>
			<td><fmt:formatDate pattern="yyyy-MM-dd" value="${list.regdate}" /></td>			
			<td>${list.member_id}</td>
		</tr>
		</c:forEach>
	</tbody>
</table>
<div class="d-grid gap-2 d-md-flex justify-content-md-end">
		<a href="${pageContext.request.contextPath}/board/Write.do" class="btn btn-outline-dark me-md-2">글쓰기</a>
</div>
</div>
</body>
</html>