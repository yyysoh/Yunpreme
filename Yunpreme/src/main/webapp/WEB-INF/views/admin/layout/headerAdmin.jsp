<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp" %>
<body>
	<div align="center">
		<div class="header">
			<c:choose>
				<c:when test="${login != null }">
					<a href="${pageContext.request.contextPath}/admin/member/myPageForm">MyPage</a> |
					<a href="${pageContext.request.contextPath}/admin/member/logout">Logout</a> |
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
			<a href="${pageContext.request.contextPath}/admin/member/loginForm">로그인</a> | 
			<a href="${pageContext.request.contextPath}/admin/member/joinForm">회원</a> |
			<!-- 드롭다운 -->
			고객센터 |
			<a href="${pageContext.request.contextPath}/admin/board/listForm/1">공지사항</a> |
			<a href="${pageContext.request.contextPath}/admin/board/listForm/3">자주 묻는 질문</a> |
			<a href="${pageContext.request.contextPath}/admin/board/listForm/8">문의게시판</a> |
			<a href="${pageContext.request.contextPath}/admin/board/listForm/14">리뷰게시판</a> |
		</div>
		<div class="main">
		