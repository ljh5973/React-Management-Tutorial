
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
    <script src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">

    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/index.js"></script>
    <script src="https://kit.fontawesome.com/fd06a08b1d.js" crossorigin="anonymous"></script>
</head>

<body>

    <header>
        <H1><a href="#">MINE</a></H1>

        <nav>
            <ul>
            	<c:if test="${empty loginUserId}">
                <li><a href="user/userLogin">LOGIN</a> </li>
                <li><a href="user/userJoin">JOIN</a> </li>
                </c:if>
                <c:if test="${not empty loginUserId}">
                <li><a href="user/logout">LOGOUT</a></li>
                </c:if>
                <li><a href="user/myPageCheck">MYPAGE</a> </li>
                <li><a href="user/cart">CART</a> </li>
                <li><a href="#">HELP</a> </li>
            </ul>
        </nav>
    </header>



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


    <section class="main">

        <div id="demo" class="carousel slide" data-ride="carousel">

            <!-- Indicators -->
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul>

            <!-- The slideshow -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="${pageContext.request.contextPath }/resources/img/slider/almond.jpg" alt="Los Angeles">
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath }/resources/img/slider/mad.jpg" alt="Chicago">
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath }/resources/img/slider/ss.jpeg" alt="New York">
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>

        </div>



    </section>

    <section class="left-side">
        <div class="side-container">
            <ul class="side-content">
                <li>
                    <div><a href="#" id="category-t">TOP <i class="bi bi-plus"></i></a></div>
                </li>
                <div class="side-content-detail-t">
                    <div class="side-content-all">
                        <strong>전체보기</strong>
                    </div>
                    <ul class="t-left">
                        <li>
                            <div><a href="">반팔 티셔츠</a></div>
                        </li>
                        <li>
                            <div><a href="">긴팔 티셔츠</a></div>
                        </li>
                        <li>
                            <div><a href="">민소매 티셔츠</a></div>
                        </li>
                        <li>
                            <div><a href="">셔츠/블라우스</a></div>
                        </li>
                    </ul>
                    <ul class="t-right">
                        <li>
                            <div><a href="">피케/카라 티셔츠</a></div>
                        </li>
                        <li>
                            <div><a href="">맨투맨/스웨트셔츠</a></div>
                        </li>
                        <li>
                            <div><a href="">후드 티셔츠</a></div>
                        </li>
                        <li>
                            <div><a href="">니트/스웨터</a></div>
                        </li>
                    </ul>
                </div>

                <li>
                    <div><a href="#" id="category-p">PANTS</a></div>
                </li>
                <div class="side-content-detail-p">
                    <div class="side-content-all">
                        <strong>전체보기</strong>
                    </div>
                    <ul class="p-left">
                        <li>
                            <div><a href="">데님 팬츠</a></div>
                        </li>
                        <li>
                            <div><a href="">코튼 팬츠</a></div>
                        </li>
                        <li>
                            <div><a href="">슈트 팬츠/슬랙스</a></div>
                        </li>
                        <li>
                            <div><a href="">트레이닝/조거팬츠</a></div>
                        </li>
                    </ul>
                    <ul class="p-right">
                        <li>
                            <div><a href="">숏 팬츠</a></div>
                        </li>
                        <li>
                            <div><a href="">레깅스</a></div>
                        </li>
                        <li>
                            <div><a href="">점프 슈트</a></div>
                        </li>
                        <li>
                            <div><a href="">기타 바지</a></div>
                        </li>
                    </ul>
                </div>

                <li>
                    <div><a href="#" id="category-o">OUTER</a></div>
                </li>
                <div class="side-content-detail-o">
                    <div class="side-content-all">
                        <strong>전체보기</strong>
                    </div>
                    <ul class="o-left">
                        <li>
                            <div><a href="">후드 집업</a></div>
                        </li>
                        <li>
                            <div><a href="">블루종/MA-1</a></div>
                        </li>
                        <li>
                            <div><a href="">레더/라이더스 재킷</a></div>
                        </li>
                        <li>
                            <div><a href="">무스탕/퍼</a></div>
                        </li>
                        <li>
                            <div><a href="">슈트/블레이저 재킷</a></div>
                        </li>
                        <li>
                            <div><a href="">카디건</a></div>
                        </li>
                    </ul>
                    <ul class="o-right">
                        <li>
                            <div><a href="">겨울 싱글 코트</a></div>
                        </li>
                        <li>
                            <div><a href="">겨울 더블 코트</a></div>
                        </li>
                        <li>
                            <div><a href="">겨울 기타 코트</a></div>
                        </li>
                        <li>
                            <div><a href="">롱패딩/롱헤비 아우터</a></div>
                        </li>
                        <li>
                            <div><a href="">숏패딩/숏헤비 아우터</a></div>
                        </li>
                        <li>
                            <div><a href="">헌팅 재킷</a></div>
                        </li>
                    </ul>
                </div>

                <li>
                    <div><a href="#" id="category-s">SHOES</a></div>
                </li>
                <div class="side-content-detail-s">
                    <div class="side-content-all">
                        <strong>전체보기</strong>
                    </div>
                    <ul class="s-left">
                        <li>
                            <div><a href="">구두</a></div>
                        </li>
                        <li>
                            <div><a href="">로퍼</a></div>
                        </li>
                        <li>
                            <div><a href="">힐/펌프스</a></div>
                        </li>
                        <li>
                            <div><a href="">플랫 슈즈</a></div>
                        </li>
                        <li>
                            <div><a href="">블로퍼</a></div>
                        </li>
                    </ul>
                    <ul class="s-right">
                        <li>
                            <div><a href="">샌들</a></div>
                        </li>
                        <li>
                            <div><a href="">슬리퍼</a></div>
                        </li>
                        <li>
                            <div><a href="">기타 신발</a></div>
                        </li>
                        <li>
                            <div><a href="">모카신/보트 슈즈</a></div>
                        </li>
                        <li>
                            <div><a href="">부츠</a></div>
                        </li>
                    </ul>
                </div>

            </ul>
        </div>

    </section>
    <section class="main-content">
        <ul class="clearfix">
            <li>
                <img src="${pageContext.request.contextPath }/resources/img/product/top/t-shirt/1.jpg" alt="">
                <h2>Product with Variants</h2>
                <h3>"★★★☆☆ "
                    <span class="red">2REIVIEW(S)</span>
                    <br />
                    "$59.00"
                </h3>
                <div class="hover-content">
                    <a href="product/detail">Jacket(상세)</a>

                </div>
            </li>
            <li>
                <img src="${pageContext.request.contextPath }/resources/img/product/top/t-shirt/1-2.jpg" alt="">
                <h2>Product with Variants</h2>
                <h3>"★★★☆☆ "
                    <span class="red">2REIVIEW(S)</span>
                    <br />
                    "$59.00"
                </h3>
                <div class="hover-content">
                    <a href="product/detail">Jacket(상세)</a>

                </div>
            </li>
            <li>
                <img src="${pageContext.request.contextPath }/resources/img/product/top/t-shirt/1-3.jpg" alt="">
                <h2>Product with Variants</h2>
                <h3>"★★★☆☆ "
                    <span class="red">2REIVIEW(S)</span>
                    <br />
                    "$59.00"
                </h3>
                <div class="hover-content">
                    <a href="product/detail">Jacket(상세)</a>

                </div>
            </li>
            <li>
                <img src="${pageContext.request.contextPath }/resources/img/product/top/t-shirt/1-4.jpg" alt="">
                <h2>Product with Variants</h2>
                <h3>"★★★☆☆ "
                    <span class="red">2REIVIEW(S)</span>
                    <br />
                    "$59.00"
                </h3>
                <div class="hover-content">
                    <a href="product/detail">Jacket(상세)</a>

                </div>
            </li>
            <li>
                <img src="${pageContext.request.contextPath }/resources/img/product/top/t-shirt/4.jpg" alt="">
                <h2>Product with Variants</h2>
                <h3>"★★★☆☆ "
                    <span class="red">2REIVIEW(S)</span>
                    <br />
                    "$59.00"
                </h3>
                <div class="hover-content">
                    <a href="product/detail">Jacket(상세)</a>

                </div>
            </li>
            <li>
                <img src="${pageContext.request.contextPath }/resources/img/product/top/t-shirt/5.jpg" alt="">
                <h2>Product with Variants</h2>
                <h3>"★★★☆☆ "
                    <span class="red">2REIVIEW(S)</span>
                    <br />
                    "$59.00"
                </h3>
                <div class="hover-content">
                    <a href="product/detail">Jacket(상세)</a>

                </div>
            </li>
            <li>
                <img src="${pageContext.request.contextPath }/resources/img/product/top/t-shirt/6.jpg" alt="">
                <h2>Product with Variants</h2>
                <h3>"★★★☆☆ "
                    <span class="red">2REIVIEW(S)</span>
                    <br />
                    "$59.00"
                </h3>
                <div class="hover-content">
                    <a href="product/detail">Jacket(상세)</a>

                </div>
            </li>
            <li>
                <img src="${pageContext.request.contextPath }/resources/img/product/top/t-shirt/7.jpg" alt="">
                <h2>Product with Variants</h2>
                <h3>"★★★☆☆ "
                    <span class="red">2REIVIEW(S)</span>
                    <br />
                    "$59.00"
                </h3>
                <div class="hover-content">
                    <a href="product/detail">Jacket(상세)</a>

                </div>
            </li>

        </ul>

    </section>

    <nav aria-label="..." class="main-pagenation">
        <ul class="pagination">
            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">Next</a></li>
        </ul>

    </nav>



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