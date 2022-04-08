<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/user.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/index.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <title>myPage</title>
</head>
<body>
      </div>
    <header>
        <div>
            <h1 class="logo">MINE</h1>
            <input type="text" id="search" name="search">
            <a href="#"><i class="fa-solid fa-magnifying-glass"></i></a>
            
                    <ul class="headlist">
                	<li><a href="user/logout">LOGOUT</a></li>
                    <li><a href="user/myPage">MYPAGE</a></li>
                    <li><a href="user/cart">CART</a></li>
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
            <p class="mypage">MY PAGE<br><small>마이페이지 회원정보 수정</small></p>
        </div>
        <form action="myPage" method="post">
        <div class="join-form">
        	
                        <div class="form-set">
                            <label for="memberId" class="j-form-label">아이디</label>
                            <input type="text" id="userId" name="userId" class="j-input" value="" readonly>
                        </div>
                        <div class="form-set">
                            <label for="memberName" class="j-form-label">이름</label>
                            <input type="text" name="userName" class="j-input">
                        </div>
                        <div class="form-set">
                            <label for="password" class="j-form-label">비밀번호</label>
                            <input type="password" name=userPw class="j-input" placeholder="비밀번호(숫자, 영문 ,특수문자 조합 최소 8자)" minlength="8">
                            <p></p>
                        </div>
                        <div class="form-set">
                            <input type="password" name="confirmPassword" class="j-input" placeholder="비밀번호 확인" minlength="8">
                        </div>
                        <div class="form-set">
                            <label for="phoneNum">핸드폰번호</label>
                            <input type="text" name="userPhone" class="j-input">
                            
                        </div>
                        <div class="form-set">
                            <label for="birth">생년월일</label>
                            <input type="text" name="userBirth" class="j-input">
                        </div>
                        <div class="form-set">
                            <label for="email" class="j-form-label">이메일</label>
                            <input type="text" name="userEmail" class="j-input">
                        </div>
                        
                        <div class="form-set">
                            <label for="zipcode">우편번호</label>
                            <input type="text" name="userZipCode" class="j-input" id="zipcode" readonly>
                        </div>
                        
                        <div class="form-set">
                            <label for="address">주소</label>
                            <input type="text" name="userAddr" class="j-input" id="address" readonly>
                            <button onclick="exePost()" type="button">검색</button>
                        </div>
                        <div class="form-set">
                            <label for="addressDetail">상세주소</label>
                            <input type="text" name="userAddrDetail" id="addressDetail" class="j-input">
                        </div>
            <button type="submit" class="join-submit">수정완료</button>
            
        </div>
        </form>
    </section>
    <aside class="quick-area">
        <ul class="quick-list">
            <li><a href="#">최근 본 상품</a></li>
            <li><a href="#">
                    <p>전화문의</p><small>010-1111-2222</small>
                </a></li>
            <li><a href="#">
                    <p>카카오톡</p><small>1:1상담</small>
                </a></li>
            <li><a href="#">오시는길</a></li>
            <li><a href="#"><i class="fa-solid fa-circle-chevron-up"></i></a></li>
            <li><a href="#scrollbottom"><i class="fa-solid fa-circle-chevron-down"></i></a></li>
        </ul>
    </aside>
    <footer class="footer">
        <div>
        <ul class="footer-info">
            <li><a href="#">HOME</a></li>
            <li><a href="#">COMPANY</a></li>
            <li><a href="#">AGREEMENT</a></li>
            <li><a href="#">PRIVACY POLICY</a></li>
            <li><a href="#">GUIDE</a></li>
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
           <ul>
               <li>KB 400000-01-200000</li>
               <li>농협 300-0000-0000-00</li>
               <li>우리 1111-111-888888</li>
               <li>신한 111-111-111111</li>
               <li>예금주 : (주)유기농</li>
           </ul>
           <p>COPYRIGHT (C) ALL RIGHTS RESERVED.</p>
        </div>
        <div id="scrollbottom"></div>
    </footer>
     
</body>
</html>