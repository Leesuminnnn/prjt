<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
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
		<div class="row">
			<div class="col-4"></div>
			<div class="col-4">
				<form
					action="${pageContext.request.contextPath}/member/JoinProcess.do" method="post">
					<table class="table">
						<tbody>
							<tr>
								<td>아이디</td>
								<td><input class="form-control" type="text"
									name="member_id" id="member_id"></td>
							</tr>
							<tr>
								<td>비밀번호</td>
								<td><input class="form-control" type="password"
									name="member_pw" id="member_pw"></td>
							</tr>
							<tr>
								<td>비밀번호확인</td>
								<td><input class="form-control" type="password"
									name="member_pw2" id="member_pw2"></td>
							</tr>
							<tr>
								<td>이름</td>
								<td><input class="form-control" type="text"
									name="member_name" id="member_name"></td>
							</tr>
						</tbody>
					</table>
					<button type="submit" class="btn btn-outline-dark">회원가입</button>
				</form>
				
			</div>
			<div class="col-4"></div>
		</div>

	</div>


</body>
</html>