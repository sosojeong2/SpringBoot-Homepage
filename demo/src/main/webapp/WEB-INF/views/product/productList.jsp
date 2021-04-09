<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <title>ONLY</title>
    <link rel="stylesheet" type="text/css" href="common/css/style.css">
  </head>

  <body>
    <!-- header -->
    <jsp:include  page="../common/header.jsp" />
      
    <div class="center">
      <input class="searchInput" type="text" placeholder="검색어를 입력하세요"> 
    </div>
      
    <div class="navDiv">
      <nav>
        <ul>
          <li><a href="productList">전체</a></li>
          <li><a href="">인기순</a></li>
          <li><a href="">낮은가격순</a></li>
          <li><a href="">높은가격순</a></li>
        </ul>
      </nav>
      <!-- <input type="button" class="proBtn" value="물품등록"> -->
    </div>

      
    <div class="listTable">
      <table>
        <tr>
            <td><img src="common/img/ONLY_logo1.png"></td>
            <td>
              <p><strong>이 상품은 진짜 귀한 물건 입니다. 세상에 하나밖에 없는 미술품 이에요!</strong></p>
              <p><span>현재가 : 50,000원</span><span>시작가 : 1,000원</span></p>
              <p><span>마감시간 : 2021-04-10 24:00:00</span></p>
              <div><input type="button" class="myProductBtn"  value="관심물품등록"></div>
              
            </td>
        </tr>
        <tr>
          <td><img src="common/img/고서적.png"></td>
          <td>
            <p><strong>이 상품은 진짜 귀한 물건입니다.</strong></p>
            <p><span>현재가 : 50,000원</span><span>시작가 : 1,000원</span></p>
            <p><span>마감시간 : 2021-04-10 24:00:00</span></p>
            <div><input type="button" class="myProductBtn"  value="관심물품등록"></div>
            
          </td>
        </tr>
        <tr>
          <td><img src="common/img/서예.png"></td>
          <td>
            <p><strong>이 상품은 진짜 귀한 물건입니다.</strong></p>
            <p><span>현재가 : 50,000원</span><span>시작가 : 1,000원</span></p>
            <p><span>마감시간 : 2021-04-10 24:00:00</span></p>
            <div><input type="button" class="myProductBtn"  value="관심물품등록"></div>
            
          </td>
        </tr>
        <tr>
          <td><img src="common/img/ONLY_logo1.png"></td>
          <td>
            <p><strong>이 상품은 진짜 귀한 물건입니다.</strong></p>
            <p><span>현재가 : 50,000원</span><span>시작가 : 1,000원</span></p>
            <p><span>마감시간 : 2021-04-10 24:00:00</span></p>
            <div><input type="button" class="myProductBtn"  value="관심물품등록"></div>
            
          </td>
        </tr>
      </table>
    </div>
  </body>
    
</html>