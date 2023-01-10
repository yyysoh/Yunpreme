<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/admin/layout/headerAdmin.jsp" %>
<div align="center">
	<table class="boardTable">
		<tr>
			<th>제목</th>
			<td>${vo.bd_title }</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${vo.bd_name }</td>
		</tr>
		<tr>
			<td>
				${vo.bd_content }
		
			</td>
		</tr>
		<tr>
			<th>첨부파일</th>

		</tr>
	</table>

</div>
<%@include file="/WEB-INF/views/layout/footer.jsp"%>
















