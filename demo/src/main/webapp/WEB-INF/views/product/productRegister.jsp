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

    <form>
      <div class="registerDiv">
        <table>
          
          <tr>
            <td>물품제목</td>
            <td><input></td>
          </tr>
          <tr>
            <td>물품설명</td>
            <td><input></td>
          </tr>
          <tr>
            <td>원산지</td>
            <td><input></td>
          </tr>
          <tr>
            <td>이미지등록</td>
            <td><input></td>
          </tr>
        </table>

        <table>
          <tr>
            <td>시작가</td>
            <td><input></td>
          </tr>
          <tr>
            <td>입찰단위</td>
            <td><input></td>
          </tr>
          <tr>
            <td>경매기간(현재부터 1일~10일)</td>
            <td><input></td>
          </tr>
        </table>


        <table>
          <tr>
            <td>배송방법 (택배,우편,택배(파손))</td>
            <td><input></td>
          </tr>
          <tr>
            <td>비용부단 (선결제, 무료)</td>
            <td><input></td>
          </tr>
        </table>

        <table>
          <tr>
            <td>자동재경매(있음, 없음)</td>
            <td><input></td>
          </tr>
          <tr>
            <td>과세여부(과세,면세)</td>
            <td><input></td>
          </tr>
        </table>
        
      </div>      
    
    </form> 

  </body>
    
</html>