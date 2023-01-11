<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/layout/headerAdmin.jsp" %>


<script type="text/javascript">
function checkWrite() {
	
	const w = document.getElementById("w");
	
	
	formData = new FormData(w);

	/* else if(document.insert.product_name.value == ""){
		alert("상품명을 입력하십시오!")
		return;
	} */
	if(document.insert.bd_name.value == ""){
		alert("작성자를 입력하십시오!")
		return;
	}else if(document.insert.bd_content.value == ""){
		alert("내용을 입력하십시오!")
		return;
	}else if(document.insert.bd_password.value == ""){
		alert("비밀번호를 입력하십시오!")
		return;
	}
	
	/* 상품명은 제이쿼리로 select에 값이 없을 때 alert 창 뜨게 하기 */


	var appendTag = "";		
	for(var i = 0; i<jsonArray.length; i++){
	    var str = jsonArray[i];
	    
	    // str의 값 : common/getImg.do?savedFileName=bc395afe-2324-438d-ae68-1a0a75d0a431.png 
	    // '='를 기준으로 자른다.
	    var result = str.toString().split('=');
	    var newInput = document.createElement('input');
	    newInput.setAttribute("type","hidden");
	    newInput.setAttribute("name","fileList");
	    newInput.setAttribute("value",result[1]);
	    //appendTag+='<input type="hidden" name="fileList" value="' + result[i] + '">'
	    // result[1] : bc395afe-2324-438d-ae68-1a0a75d0a431.png
	    w.appendChild(newInput);
	}
	
	//console.log(w);
	document.insert.submit();
	
}
</script>
<div align="center">
	<form action="${path}update/${vo.board_no}/${vo.bd_no}" method="post" id = "w" name = "insert" enctype="multipart/form-data">
		<c:if test="${!empty board_no }">
			<input type="hidden" name="board_no" value="${vo.board_no }">
		</c:if>
		
		<table class = "boardTable">
			<tr>
				<th width="90">카테고리</th>
				<td>
					<select name="bd_category">
						<c:if test="${vo.bd_category eq null}">
							<option value="" selected>=== 선택 안함 ===</option>
						</c:if>
						<c:if test="${vo.bd_category ne null}">
							<option value="" selected>=== 선택 안함 ===</option>
						</c:if>
						<c:forEach var="brd" items="${list }" >
							<c:if test="${brd.board_name eq vo.bd_category}">
								<option value="${brd.board_name }" selected>${brd.board_name }</option>
							</c:if>
							<c:if test="${brd.board_name ne vo.bd_category}">
								<option value="${brd.board_name }">${brd.board_name }</option>
							</c:if>
						</c:forEach>
						
					</select>
				</td>
			</tr>
			<c:if test="${board_no == 8 || board_no == 9 || board_no == 10 || board_no == 11 }">
				<tr>
					<!-- 상품명 검색창에서 입력할 것 -->
					<th width="90">상품명</th>
					<td><input type="text" name="product_name" size = "50" value="${vo.product_name }"></td>
				</tr>
			</c:if>
			<tr>
				<th width="90">제목</th>
				<td><input type="text" name="bd_title" size = "50" value="${vo.bd_title }" readonly="readonly"></td>
			</tr>
			<tr>
				<th width="90">작성자</th>
				<td><input type="text" name="bd_name" size="10" value="${vo.bd_name }"></td>
			</tr>
			<tr>
				<td colspan="2">
					<textarea class="summernote" rows="15" cols="65" name="bd_content">${vo.bd_content }</textarea>
				</td>
			</tr>
			<tr>
				<th width="90">첨부파일</th>
				<td colspan="2">
					<input type="file" name="photo" size = "400">
				</td>
			</tr>
			<tr>
				<th width="90">비밀번호</th>
				<td><input type="password" name="bd_password" size = "10" value="${vo.bd_password }"></td>
			</tr>
		</table>
		<div class="btnBox">
			<input type="button" value="쓰기" onclick="javascript:checkWrite()">
		</div>
	</form>
</div>
<script type="text/javascript">
function textEdit(){
	   jsonArray = [];
	   $('.summernote').summernote({
	         height: 500,                 // 에디터 높이
	         minHeight: null,             // 최소 높이
	         maxHeight: null,             // 최대 높이
	         focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
	         lang: "ko-KR",					// 한글 설정
	        toolbar: [
	           // [groupName, [list of button]]
	           ['fontname', ['fontname']],
	           ['fontsize', ['fontsize']],
	           ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
	           ['color', ['forecolor','color']],
	           ['table', ['table']],
	           ['para', ['ul', 'ol', 'paragraph']],
	           ['height', ['height']],
	           ['insert',['picture','link','video']],
	           ['view', ['fullscreen', 'help']]
	         ],
	       fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
	       fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
	       callbacks: {
	         onImageUpload : function(files){
	        	   console.log("onImageUpload", JSON.stringify(files));
	               // 파일 업로드(다중업로드를 위해 반복문 사용)
	               for (var i = files.length - 1; i >= 0; i--) {
	                   uploadSummernoteImageFile(files[i], this);
	               }
	          }
	    } 
	 });

	   $('.summernote').summernote('fontSize', '24');

	   function uploadSummernoteImageFile(file, el) {
	       var data = new FormData();	
	       data.append("file",file);
	           $.ajax({
	             url: '${ pageContext.request.contextPath }/summer_image',
	             type: "POST",
	             enctype: 'multipart/form-data',
	             data: data,
	             cache: false,
	             contentType : false,
	             processData : false,
	             success : function(data) {
	                       var json = JSON.parse(data);
	                       console.log(json);
	                       $(el).summernote('editor.insertImage',json["url"]);
	                           jsonArray.push(json["url"]);
	                           jsonFn(jsonArray);
	                   },
	                   error : function(e) {
	                       console.log(e);
	                   }
	               });
	           }

	}

	function jsonFn(jsonArray){
		console.log(jsonArray);
	}

	$(document).ready(textEdit());
</script>
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>





















