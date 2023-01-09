<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
//	MemberDTO login = (MemberDTO)session.getAttribute("login");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/style.css">

<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

<script src="${ pageContext.request.contextPath }/resources/js/httpRequest.js"></script>

<!-- 순서 지켜야 한다 -> 두 개 다 존재해야 한다 안그러면 한글, 이미지 깨짐-->
<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<!-- summernot를 위해서 추가해야 할 부분 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/summernote/summernote-lite.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/summernote/summernote-lite.css">

<title>MyHome</title>
</head>
<body>
	<div align="center">
		<div class="header">
			<c:choose>
				<c:when test="${!empty login }"><%--empty -> 없으면 --%>
					<a href="${ pageContext.request.contextPath }/member/myPage">MyPage</a> | 
					<a href="${ pageContext.request.contextPath }/login/logout">Logout</a> | 					
				</c:when>
				<c:otherwise>
					<a href="${ pageContext.request.contextPath }/login/login">Login</a> | 
					<a href="${ pageContext.request.contextPath }/member/joinForm">Join</a> |				
				</c:otherwise>
			</c:choose>
			<a href="${ pageContext.request.contextPath }/board/list">Board</a> | 
			<a href="/myhome">Home</a>
		</div>
		<div class="main">