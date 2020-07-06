<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="se" uri="http://www.springframework.org/security/tags" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Hello, Spring Boot App<br>
	<a href="include.do">인클루드 테스트</a>
	
		<br><hr><br>
		<c:if test="${not empty pageContext.request.userPrincipal}">	
		<se:authentication property="name"/> <br>
		<se:authentication property="authorities"/> <br>
		${pageContext.request.userPrincipal} <br>
		</c:if>
	<br><hr><br>
		
	
	<a href="signin">sign in</a><br>
	<a href="signup">sign up</a><br>
	<a href="resetpassword">reset Password</a><br>
	<a href="edituserinfo">edit User Info</a><br>
	<a href="deleteuser?id=${currentUser.id}">현재 접속 회원 삭제</a><br>
	
	
</body>
</html>