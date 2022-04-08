<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mypage.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/join.css">
    <script src="https://kit.fontawesome.com/fd06a08b1d.js" crossorigin="anonymous"></script>
    <title>myPage</title>
</head>
<body>
    <header>
        <div>
            <h1 class="logo">MINE</h1>
            <input type="text" id="search" name="search">
            <a href="#"><i class="fa-solid fa-magnifying-glass"></i></a>
            
                <ul class="headlist">
                    <c:if test="${empty loginUserId}">
                <li><a href="user/userLogin">LOGIN</a> </li>
                <li><a href="user/userJoin">JOIN</a> </li>
                </c:if>
                <c:if test="${not empty loginUserId}">
                <li><a href="user/logout">LOGOUT</a></li>
                </c:if>
                    <li><a href="#">MYPAGE</a></li>
                    <li><a href="#">CART</a></li>
                </ul>
            <div>
                <ul class="productlist">
                    <li><a href="#">TOP</a></li>
                    <li><a href="#">PANTS</a></li>
                    <li><a href="#">OUTER</a></li>
                    <li><a href="#">SHOES</a></li>
                    <li><a href="#">EVENT</a></li>
                </ul>
            </div>
        </div>
    </header>
    <section>
        <div>
            <p class="mypage">SHOPPING CART<br><small>장바구니</small></p>
        </div>
       <h2>장바구니 목록</h2>
       <div>
       	<table>
       		<thead>
       			<tr>
	       			<th>상품 정보</th>
	       			<th>수량</th>
	       			<th>가격</th>
	       			<th>배송비</th>
	       			<th>금액</th>
       			</tr>
       		</thead>
       		<tbody>
		        <c:forEach var="list" items="cartList">
		        	<tr>
		        		<td>${list.product}</td>
		        		<td>${list.quantity}</td>
		        		<td>${list.price}</td>
		        		<td>${list.deliveryFee}</td>
		        		<td>${list.totalPrice}</td>
		        	</tr>
		        </c:forEach>
       		</tbody>
        </table>
        </div>
    </section>
    <footer class="footer">
        
        <div class="customer">
            <h2>고객센터</h2>
            <p>1544-1544<br>
                상담시간 10:00 - 17:00 / 점심시간 12:00 - 13:00]<br>
                주말 및 공휴일은 휴무이오니 문의게시판을 이용해주세요
            </p>
        </div>
        <div class="count-info">
            <h2>계좌정보</h2>
            <p>KB 400000-01-200000<br>
                농협 300-0000-0000-00<br>
                우리 1111-111-888888<br>
                신한 111-111-111111<br>
                예금주 : (주)유기농
            </p>
        </div>
        
        <div>
        <ul class="footer-info">
            <li><a href="#">회사소개</a></li>
            <li><a href="#">이용약관</a></li>
            <li><a href="#">이메일문의</a></li>
            <li><a href="#">개인정보취급방침</a></li>
            <li><a href="#">사업자정보확인</a></li>
        </ul>
        </div>
        <div>
        <ul class="footer-info">
            <li><a href="#">게시판</a></li>
            <li><a href="#">공지사항</a></li>
            <li><a href="#">상품문의</a></li>
            <li><a href="#">취소/교환/반품</a></li>
            <li><a href="#">배송문의</a></li>
            <li><a href="#">상품후기</a></li>
            <li><a href="#">미확인입금자명단</a></li>
            <li><a href="#">VIP전용</a></li>
        </ul>
        </div>
        <div class="footer-info">
           <ul>
               <li>(주)유기농 대표 이진호</li>
               <li>전화 1544-1544</li>
               <li>팩스 02-1234-5678</li>
               <li>경기도 광명시 *** *** *** 건물 (202 1) (우)10000</li>
               <li>사업자등록번호 200-00-22222</li>
               <li>개인정보관리책임자 이진호</li>
               <li>제휴문의 uginongeasynong@uginong.com</li>
           </ul>
        </div>
        <div id="scrollbottom"></div>
    </footer>
</body>
</html>