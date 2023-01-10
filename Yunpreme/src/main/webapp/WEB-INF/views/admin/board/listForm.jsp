<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/views/admin/layout/headerAdmin.jsp" %>
	<div align="center">
		<table>
			<c:choose>
				<c:when test="${board_no == 3 || board_no == 4 || board_no == 5 || board_no == 6}">
					<a href="${pageContext.request.contextPath}/admin/board/listForm/3">전체보기</a> |
					<a href="${pageContext.request.contextPath}/admin/board/listForm/4">배송</a> |
					<a href="${pageContext.request.contextPath}/admin/board/listForm/5">교환/반품,취소</a> |
					<a href="${pageContext.request.contextPath}/admin/board/listForm/6">적립금/기타</a> 
				</c:when>
				<c:when test="${board_no == 8 || board_no == 8 || board_no == 9 || board_no == 10 || board_no == 11 || board_no == 12 || board_no == 13}">
					<a href="${pageContext.request.contextPath}/admin/board/listForm/8">상품문의</a> |
					<a href="${pageContext.request.contextPath}/admin/board/listForm/9">배송문의</a> |
					<a href="${pageContext.request.contextPath}/admin/board/listForm/10">배송 전 변경/취소</a> | <br>
					<a href="${pageContext.request.contextPath}/admin/board/listForm/11">배송 후 교환/반품</a> |
					<a href="${pageContext.request.contextPath}/admin/board/listForm/12">입금확인</a> |
					<a href="${pageContext.request.contextPath}/admin/board/listForm/13">이벤트 및 기타 문의</a> 
				</c:when>
			</c:choose>
		</table>
	
		<table class="boardTable">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
			<c:choose>
				<c:when test="${empty list }">
					<tr>
						<td colspan="4" align="center">
							<span style="font-weight: bold;">작성한 글이 없습니다.</span>
						</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="vo" items="${list }">
						<tr>
							<td>${vo.bd_no }</td>
							<td>							
								<a href="${ pageContext.request.contextPath }/admin/board/listForm/${vo.board_no }/content/${vo.bd_no}">${vo.bd_title }</a>
							</td>
							<td>${vo.bd_name }</td>
							<td>${vo.bd_date }</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>
		<button onclick="document.location.href='${ pageContext.request.contextPath }/admin/board/insertForm/${board_no }'">글쓰기</button>
	</div>
	
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>
























