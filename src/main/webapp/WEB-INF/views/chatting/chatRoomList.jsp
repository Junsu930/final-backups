<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>

.roomBox::-webkit-scrollbar {
    width: 4px;  /* 스크롤바의 너비 */
}

.roomBox::-webkit-scrollbar-thumb {
    height: 15%; /* 스크롤바의 길이 */
    background: var(--grey-color); /* 스크롤바의 색상 */
    border-radius: 10px;
}

.roomBox::-webkit-scrollbar-track {
    background: var(--scroll-background-color);  /*스크롤바 뒷 배경 색상*/
}

.darkmode .roomBox::-webkit-scrollbar-track {
    background: transparent;  /*스크롤바 뒷 배경 색상*/
}

.darkmode .roomBox::-webkit-scrollbar-thumb {
    background: var(--scroll-dark-color); /* 다크모드 스크롤바 연한 핑크 */
}

.roomList{
	width:300px;
	height: 500px;
	position: fixed;
	right: 100px;
	bottom: 150px;
	background-color: var(--grr-color);
	border-radius: 10px;
	display: none;
	justify-content: center;
	z-index: 100;
	transition-duration : 1s;
	box-shadow: 4px 4px 14px rgba(0, 0, 0, 0.15);
	justify-content: center;
	align-items: center;
}

.roomBox{
	width: 90%;
	height: 90%;
	overflow: auto;
}

.eachRoomList{
	height: 10%;
	background-color: var(--chat-color);
	margin: 10px;
	border-radius: 10px;
	padding: 10px;
	display: flex;
	justify-content: center;
	align-items: center;
	box-shadow: 4px 4px 14px rgba(0, 0, 0, 0.15);
}

.noRoom{
	height: 10%;
	background-color: var(--chat-color);
	margin: 10px;
	border-radius: 10px;
	padding: 10px;
	display: flex;
	font-size :1em;
	justify-content: center;
	align-items: center;
	box-shadow: 4px 4px 14px rgba(0, 0, 0, 0.15);
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>채팅방 리스트</title>
</head>
<body>
	<div class="roomList" id="roomList">
		<div class="roomBox">
			<c:if test="${empty sessionScope.chatRoomList}">
				<div class="noRoom">
					채팅방이 없습니다!!
				</div>
			</c:if>
			<c:if test="${!empty sessionScope.chatRoomList}">			
				<c:forEach var="chatList" items="${sessionScope.chatRoomList}">
					<div class="eachRoomList" onclick="goRoom('${chatList.chatRoomNo}')" style="cursor: pointer;">
						${chatList.chatTitle}
					</div>
					<input type="hidden" value="${chatList.chatRoomNo}" name="hiddemRoomNo" class="chatRooms">
				</c:forEach>	
			</c:if>
		</div>
	</div>
<script src="${contextPath}/resources/js/chatRoomList.js"></script>
</body>
</html>