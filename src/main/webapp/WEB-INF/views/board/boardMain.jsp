<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/css/global.css">
	 <link rel="stylesheet"href="${contextPath}/resources/css/boradMain.css"></script>
 
    <script src="https://kit.fontawesome.com/555e979a9d.js" crossorigin="anonymous"></script>   
    <title>중고거래상세페이지</title>
   </head>
   <body>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <div class="boardContainer">
    
    <div class="boardSvgBox">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1366 768">
            <g id="_레이어_2" data-name="레이어 2">
              <path class="boardPath" d="m250,469c-3.04,6.94-6.76,16.42-10,28-4.04,14.44-6.06,21.66-5,31,.99,8.74,4.33,15.16,11,28,5.08,9.77,8.59,16.53,15,24,8,9.32,16,14.21,32,24,11.23,6.87,19.62,12,32,17,12.6,5.09,22.06,7.06,41,11,22.13,4.61,39.14,6.42,45,7,18.05,1.79,31.61,1.92,42,2,21.44.16,32.15.24,43-2,19.82-4.09,33.69-12.48,41-17,25.43-15.7,25.55-26.67,52-49,12.35-10.43,27.9-23.55,51-32,20.65-7.55,40.36-8.83,74-11,0,0,18.55-1.2,48-8,12.55-2.9,19.8-5.24,24-12,5.05-8.13,3.69-19.41-1-27-4.35-7.04-10.81-9.65-22-14-8.12-3.15-18.19-5.14-38-9-10.72-2.09-21.26-5.01-32-7-11.42-2.12-18.41-3.01-23-9-2.66-3.47-5-9.29-3-14,2.1-4.95,7.97-6.26,17-9,9.48-2.87,18.44-7.39,28-10,17.9-4.89,35.27-11.53,53-17,29.91-9.22,37.96-12.33,65-21,42.55-13.64,59.6-17.81,165-48,22.01-6.3,44.4-11.41,66-19,12.66-4.45,26.28-5.72,39-10,4.9-1.65,10.88-3.83,18-2,1.25.32,12.85,3.5,16,14,2.78,9.28-3.11,17.4-5,20-3.57,4.92-7.72,7.38-17,12-13.18,6.56-19.77,9.84-31,14-14.12,5.24-25.95,8.76-34,11-21.06,5.87-36.79,8.73-55,12-26.63,4.77-38.02,5.56-50,5-9.02-.42-25.08-1.17-26-6-.83-4.37,11.16-9.88,31-19,12.17-5.59,21.17-8.77,32-10,8.78-1,14.17-.21,19,2,2.27,1.04,8.52,3.89,11,9,6.54,13.48-16.31,36.31-21,41-6.51,6.51-17.7,16.2-45,29-20.38,9.56-40.88,19.17-71,24-12.68,2.03-38.7,5.08-71,0-22.61-3.56-38.81-9.61-53-15-35.73-13.57-38.88-21.34-81-41-48.95-22.85-68.55-23.5-79-23-10.69.51-28.44,1.35-43,13-5,4-6.61,6.87-17,16-3.89,3.42-15.36,13.51-23,18-9.83,5.79-14.66,2.69-56,1-40.79-1.67-35.11,1-46-1,0,0-10.28-1.89-25,0-9.85,1.26-12.13,3.13-13,5-1.16,2.51-.23,6.05,7,16,8.46,11.63,16.29,19.31,17,20,11.81,11.47,17.72,17.21,26,24,8.63,7.08,19.55,16.03,35,25,24.9,14.46,46.36,20.15,54,22,25.15,6.09,38.32,9.28,47,2,8.07-6.76,8.71-22.84,10-55,.75-18.77-.2-28.55,7-36,6.46-6.68,15.56-7.45,23-8,37.04-2.72,69.34,24.71,85,38,4.81,4.08,12.31,6.67,12,11-.51,7.17-20.06,11.34-33,14-28.5,5.87-50,5-50,5-54.52-2.2-88-8-88-8-53.03-9.19-105.65-20.95-159-28-35.46-4.69-68.12-7.48-102-30-25.23-16.77-26.93-28.38-27-33-.1-6.36,2.62-16.5,44-46,9.4-6.7,26.11-18.19,62-39,31.77-18.42,42.52-23.24,64-38,2.22-1.52,24.29-18.93,32-24,2.4-1.57,4.65-3.35,7-5,5.06-3.56,6.14-4.2,6-5-.34-2.02-8-2.74-14-2-3.4.42-8.44,1.1-13,5-2.3,1.96-5.03,4.3-5,7,.05,5.17,10.17,9.07,25,14,18.73,6.22,28.1,9.33,40,12,27.79,6.23,41.68,9.34,55,7,10.05-1.76,23.6-4.14,33-16,7.55-9.52,13.87-26.98,8-37-1.01-1.72-2.84-4.03-2-6,1.44-3.37,9.8-3.62,15-3,4.95.59,7.26,2,8,1,1.36-1.83-4.9-8.7-7-11-6.99-7.67-9.11-6.89-11-11-2.94-6.38,1.72-9.27-1-17-2.29-6.49-7.63-10.31-10-12-1.4-1-4.83-3.27-11-5-7.28-2.04-14.28-2.16-24-1-10.06,1.21-19.55,3.38-31,7-4.01,1.27-11.88,3.86-29,11-14.23,5.93-25.57,10.66-40,18-18.3,9.31-27.45,13.96-38,22-13.51,10.3-25.67,19.57-35,36-7.11,12.53-7.96,21.1-14,22-7.25,1.08-15.57-9.86-19-19-3.92-10.46-1.88-19.73,1-32,2.17-9.24,5.37-22.91,16-37,10.02-13.29,21.32-19.9,32-26,16.24-9.28,30.09-13.05,45-17,6.21-1.64,23.02-5.85,57-14,9.13-2.19,16.89-4.04,17-7,.14-3.8-12.4-7.53-21-9-11.07-1.89-20.55-.9-35,2-19.68,3.94-30.31,6.08-45,12-15.13,6.1-26.42,13.73-49,29-15.2,10.28-24.41,17.69-25,28-.11,1.94-.32,5.59,2,8,6.96,7.25,29.5-4.17,41-10,23.29-11.8,25.52-18.08,43-27,11.79-6.02,23.86-8.68,48-14,37.05-8.16,65.28-9.68,72-10,0,0,25.68-1.22,52,1,21.11,1.78,16.33,3.71,29,4,3.98.09,8.13-.01,9,2,1.3,3-5.48,8.82-11,13"/>
            </g>
        </svg>
    </div>
    
    
    <div class="totalTitle">전체 게시판</div>
    
    <div class="naviBar">
      <ul>
        <li><a href="#" class="total">전체</a></li>
        <li><a href="#">공지</a></li>
        <li><a href="#">인기게시판</a></li>
        <li><a href="#">일반게시판</a></li>
       <button class="write"><a href="boardWrite">글쓰기</a></button>
      </ul>
   </div>
   
<div>

</div>
    <table>
      <thead>
        <tr>
          <th class="boardNumber">번호</th>
             <th></th>
          <th class="title">제목</th>
          <th class="ninkName"><i class="fa-solid fa-user"></i></th>
          <th class="views"><i class="fa-solid fa-eye"></i></th>
          <th class="heart"><i class="fa-solid fa-heart"></i></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td class="boardNumber">공지</td>
          <td><span class="tagNotice">공지사항</span></td>
          <td   class="title"><a href="boardDetail">안녕하세요 이갈치입니다 </a></td>
          <td class="ninkName">작성자1</td>
          <td class="views">10</td>
          <td class="heart">5</td>
        </tr>
        <tr>
          <td class="boardNumber">공지</td>
          <td><span class="tagBasic">일반게시판</span></td>
          <td class="title"><a href="#">게시물 제목 2</a></td>
          <td class="ninkName">작성자2</td>
          <td class="views">5</td>
          <td class="heart">3</td>
        </tr>
        <tr>
          <td class="boardNumber">13</td>
          <td><span class="tagBasic">일반게시판</span></td>
          <td class="title"><a href="#">게시물 제목 2</a></td>
          <td class="ninkName">작성자2</td>
          <td class="views">5</td>
          <td class="heart">3</td>
        </tr>
          <tr>
          <td class="boardNumber">14</td>
          <td><span class="tagBasic">일반게시판</span></td>
          <td class="title"><a href="#">게시물 제목 2</a></td>
          <td class="ninkName">작성자2</td>
          <td class="views">5</td>
          <td class="heart">3</td>
        </tr>
       <tr>
          <td class="boardNumber">15</td>
          <td><span class="tagBasic">일반게시판</span></td>
          <td class="title"><a href="#">게시물 제목 2</a></td>
          <td class="ninkName">작성자2</td>
          <td class="views">5</td>
          <td class="heart">3</td>
        </tr>
        <tr>
          <td class="boardNumber">16</td>
          <td><span class="tagBasic">일반게시판</span></td>
          <td class="title"><a href="#">게시물 제목 2</a></td>
          <td class="ninkName">작성자2</td>
          <td class="views">5</td>
          <td class="heart">3</td>
        </tr>
        <tr>
          <td class="boardNumber">17</td>
          <td><span class="tagBasic">일반게시판</span></td>
          <td class="title"><a href="#">게시물 제목 2</a></td>
          <td class="ninkName">작성자2</td>
          <td class="views">5</td>
          <td class="heart">3</td>
        </tr>
        <tr>
          <td class="boardNumber">18</td>
          <td><span class="tagBasic">일반게시판</span></td>
          <td class="title"><a href="#">게시물 제목 2</a></td>
          <td class="ninkName">작성자2</td>
          <td class="views">5</td>
          <td class="heart">3</td>
        </tr>
      <tr>
          <td class="boardNumber">19</td>
          <td><span class="tagBasic">일반게시판</span></td>
          <td class="title"><a href="#">게시물 제목 2</a></td>
          <td class="ninkName">작성자2</td>
          <td class="views">5</td>
          <td class="heart">3</td>
        </tr>
        <tr>
          <td class="boardNumber">20</td>
          <td><span class="tagBasic">일반게시판</span></td>
          <td class="title"><a href="#">게시물 제목 2</a></td>
          <td class="ninkName">작성자2</td>
          <td class="views">5</td>
          <td class="heart">3</td>
        </tr>
        <tr>
          <td class="boardNumber">21</td>
          <td><span class="tagBasic">일반게시판</span></td>
          <td class="title"><a href="#">게시물 제목 2</a></td>
          <td class="ninkName">작성자2</td>
          <td class="views">5</td>
          <td class="heart">3</td>
        </tr>
           <tr>
          <td class="boardNumber">22</td>
          <td><span class="tagBasic">일반게시판</span></td>
          <td class="title"><a href="#">게시물 제목 2</a></td>
          <td class="ninkName">작성자2</td>
          <td class="views">5</td>
          <td class="heart">3</td>
        </tr>
        <tr>
          <td class="boardNumber">23</td>
          <td><span class="tagBasic">일반게시판</span></td>
          <td class="title"><a href="#">게시물 제목 2</a></td>
          <td class="ninkName">작성자2</td>
          <td class="views">5</td>
          <td class="heart">3</td>
        </tr>
  
      </tbody>
    </table>
    <div class="pagination-search">
        <div class="pagination">
            <a href="#"><span>1</span></a>
            <a href="#" class="active"><span>2</span></a>
          </div>
        <div class="search-box">
          <select id="nav-select">
            <option value="all">전체</option>
            <option value="notice">공지</option>
            <option value="popular">인기게시판</option>
            <option value="general">일반게시판</option>
          </select>
          <input type="text" placeholder="글 검색">
          <button type="button">검색</button>
      </div>
    </div>
  </div>
  
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>