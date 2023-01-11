<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/views/admin/layout/headerAdmin.jsp" %>
	<div align="center">
		<table>
			<c:choose>
				<c:when test="${board_no == 3 || board_no == 4 || board_no == 5 || board_no == 6}">
					<a href="${path }listForm/3">전체보기</a> |
					<a href="${path }listForm/4">배송</a> |
					<a href="${path }listForm/5">교환/반품,취소</a> |
					<a href="${path }listForm/6">적립금/기타</a> 
				</c:when>
				<c:when test="${board_no == 8 || board_no == 8 || board_no == 9 || board_no == 10 || board_no == 11 || board_no == 12 || board_no == 13}">
					<a href="${path }listForm/8">상품문의</a> |
					<a href="${path }listForm/9">배송문의</a> |
					<a href="${path }listForm/10">배송 전 변경/취소</a> | <br>
					<a href="${path }listForm/11">배송 후 교환/반품</a> |
					<a href="${path }listForm/12">입금확인</a> |
					<a href="${path }listForm/13">이벤트 및 기타 문의</a> 
				</c:when>
			</c:choose>
		</table>
	
		<table class="boardTable">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>비고</th>
			</tr>
			<c:choose>
				<c:when test="${empty list }">
					<tr>
						<td colspan="5" align="center">
							<span style="font-weight: bold;">작성한 글이 없습니다.</span>
						</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="vo" items="${list }">
						<tr>
							<c:if test="${vo.bd_category != null}">
								<td>${vo.bd_category }</td>
							</c:if>
							<c:if test="${vo.bd_category == null}">
								<td>${vo.bd_seq }</td>
							</c:if>
							<td>							
								<a href="${path }listForm/${vo.board_no }/${vo.bd_no}">${vo.bd_title }</a>
							</td>
							<td>${vo.bd_name }</td>
							<td>${vo.bd_date }</td>
							<td>
								<button onclick="document.location.href='${path }updateForm/${vo.board_no }/${vo.bd_no}'">수정</button>
								<button onclick="document.location.href='${path }delete/${vo.board_no }/${vo.bd_no}'">삭제</button>
							</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>
		<button onclick="document.location.href='${path }insertForm/${board_no }'">글쓰기</button>
	</div>
	
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>
























