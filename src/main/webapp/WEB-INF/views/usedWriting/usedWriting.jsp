<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${contextPath}/resources/css/global.css">
<link rel="stylesheet" href="${contextPath}/resources/css/usedWriting.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/44f3dd3f25.js" crossorigin="anonymous"></script>
<title>중고거래작성</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
 <div class="usedContent">
 	<!-- 기본 정보 -->
 	<div>
 		<p>기본정보</p>
 		<p>* 필수항목</p>
 	</div>
 	<!-- 상품 이미지 -->
 	<div>
 		<div>상품 이미지<p style="color : var(--red-color); display: inline;">*</p></div>
 		<!-- 사진 칸 -->
 		<div>
 			<img id="imageInsertPic" src="${contextPath}/resources/images/imageinsert.png">
 		</div>
 	</div>
 	<!-- 제목 -->
 	<div>
 		<div>제목<p style="color : var(--red-color); display: inline;">*</p></div>
 		<div class="usedTitleDiv">
	 		<input id="usedTitlePlace" type="text" maxlength="39">
	 		<p id="usedTitleInputTextLength">0/40</p>
 		</div>
 	</div>
 	<!-- 거래 지역 -->
 	<div>
 		<div>거래지역<p style="color : var(--red-color); display: inline;">*</p></div>
 		<!-- 지역 카드 -->
 		<div class="regionCardBox">
 			<div class="regionCard">
	 			<input class="regionBtn" type="radio" name="region" value="seoul" id="seoulBtn">
 				<label for="seoulBtn">서울</label>
 			</div>
 			<div class="regionCard">
	 			<input class="regionBtn" type="radio" name="region" value="gyeonggi" id="gyeonggiBtn">
 				<label for="gyeonggiBtn">경기도</label>
 			</div>
 			<div class="regionCard">
 				<input class="regionBtn" type="radio" name="region" value="busan" id="busanBtn">
 				<label for="busanBtn">부산</label>
 			</div>
 			<div class="regionCard">
 				<input class="regionBtn" type="radio" name="region" value="daegu" id="daeguBtn">
 				<label for="daeguBtn">대구</label>
 			</div>
 			<div class="regionCard">광주</div>
 			<div class="regionCard">대전</div>
 			<div class="regionCard">제주도</div>
 			<div class="regionCard">충정북도</div>
 			<div class="regionCard">충청남도</div>
 			<div class="regionCard">경상북도</div>
 			<div class="regionCard">경상남도</div>
 			<div class="regionCard">전라북도</div>
 			<div class="regionCard">전라남도</div>
 			<div class="regionCard">강원도</div>
 		</div>
 	</div>
 	<!-- 상태 -->
 	<div></div>
 	<!-- 가격 -->
 	<div></div>
 	<!-- 설명 -->
 	<div></div>
 	<!-- 버튼 -->
 	<div></div>
 </div>
 <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
<script type="text/javascript" src="${contextPath}/resources/js/usedWriting.js"></script>
</body>
</html>