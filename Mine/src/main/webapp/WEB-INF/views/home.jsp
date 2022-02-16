
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
</head>

<body>

    <header>
        <H1>MINE</H1>

        <nav>
            <ul>
                <li><a href="user/userLogin">로그인</a> </li>
                <li><a href="user/userJoin">회원가입</a> </li>
                <li><a href="#">마이페이지</a> </li>
                <li><a href="#">최근 본 상품</a> </li>
                <li><a href="#">관심 제품</a> </li>
                <li><a href="#">장바구니</a> </li>
                <li><a href="#">주문배송조회</a> </li>
                <li><a href="#">고객센터</a> </li>
            </ul>
        </nav>
    </header>



    <aside class="quick-area">
        <ul class="quick-list">
            <li><a href="#">
                    <p>전화문의</p><small>010-1111-2222</small>
                </a></li>
            <li><a href="#">
                    <p>카카오톡</p><small>1:1상담</small>
                </a></li>
            <li><a href="#">오시는길</a></li>
        </ul>
    </aside>


    <section class="main">

   

            <!-- The slideshow -->
        
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img class="d-block w-100" src="${pageContext.request.contextPath }/resources/img/slider/slide1.jpg" alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="${pageContext.request.contextPath }/resources/img/slider/slide2.jpg" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="${pageContext.request.contextPath }/resources/img/slider/slide3.jpg" alt="Third slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
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
                <img src="${pageContext.request.contextPath }/resources/img/product/top/t-shirt/t000001.jpg" alt="">
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
                <img src="${pageContext.request.contextPath }/resources/img/product/top/t-shirt/t000002.jpg" alt="">
                <h2>Product with Variants</h2>
                <h3>"★★★☆☆ "
                    <span class="red">2REIVIEW(S)</span>
                    <br />
                    "$59.00"
                </h3>
                <div class="hover-content">
                    <a href="detail.html">Jacket(상세)</a>

                </div>
            </li>
            <li>
                <img src="${pageContext.request.contextPath }/resources/img/product/top/t-shirt/t000003.jpg" alt="">
                <h2>Product with Variants</h2>
                <h3>"★★★☆☆ "
                    <span class="red">2REIVIEW(S)</span>
                    <br />
                    "$59.00"
                </h3>
                <div class="hover-content">
                    <a href="#">Jacket(상세)</a>

                </div>
            </li>
            <li>
                <img src="${pageContext.request.contextPath }/resources/img/product/top/t-shirt/t000004.jpg" alt="">
                <h2>Product with Variants</h2>
                <h3>"★★★☆☆ "
                    <span class="red">2REIVIEW(S)</span>
                    <br />
                    "$59.00"
                </h3>
                <div class="hover-content">
                    <a href="#">Jacket(상세)</a>

                </div>
            </li>
            <li>
                <img src="${pageContext.request.contextPath }/resources/img/product/top/t-shirt/t000005.jpg" alt="">
                <h2>Product with Variants</h2>
                <h3>"★★★☆☆ "
                    <span class="red">2REIVIEW(S)</span>
                    <br />
                    "$59.00"
                </h3>
                <div class="hover-content">
                    <a href="#">Jacket(상세)</a>

                </div>
            </li>
            <li>
                <img src="${pageContext.request.contextPath }/resources/img/product/top/t-shirt/t000006.jpg" alt="">
                <h2>Product with Variants</h2>
                <h3>"★★★☆☆ "
                    <span class="red">2REIVIEW(S)</span>
                    <br />
                    "$59.00"
                </h3>
                <div class="hover-content">
                    <a href="#">Jacket(상세)</a>

                </div>
            </li>
            <li>
                <img src="${pageContext.request.contextPath }/resources/img/product/top/t-shirt/t000007.jpg" alt="">
                <h2>Product with Variants</h2>
                <h3>"★★★☆☆ "
                    <span class="red">2REIVIEW(S)</span>
                    <br />
                    "$59.00"
                </h3>
                <div class="hover-content">
                    <a href="#">Jacket(상세)</a>

                </div>
            </li>
            <li>
                <img src="${pageContext.request.contextPath }/resources/img/product/top/t-shirt/t000008.jpg" alt="">
                <h2>Product with Variants</h2>
                <h3>"★★★☆☆ "
                    <span class="red">2REIVIEW(S)</span>
                    <br />
                    "$59.00"
                </h3>
                <div class="hover-content">
                    <a href="#">Jacket(상세)</a>

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



    <footer>
        <div class="footer-top">
            <div class="footer-top-left">
                <h2>고객센터| 1544-1544</h2>
                <span>상담시간 10:00 - 17:00 / 점심시간 12:00 - 13:00
                    주말 및 공휴일은 휴무이오니 문의게시판을 이용해주세요
                </span>
            </div>
            <div class=footer-top-right>
                <h2>교환/반송주소</h2>
                <span>경기도 광명시 *** *** *** 건물 (202 1)
                </span>
            </div>
        </div>
        <div class="footer-bottom">
            <div class=footer-info>
                <h2>info</h2>
                <p>회사소개</p>
                <p>이용약관</p>
                <p>이메일문의</p>
                <p>개인정보취급방침</p>
                <p>사업자정보확인</p>
            </div>
            <div class=footer-info>
                <h2>게시판</h2>
                <p>공지사항</p>
                <p>상품문의</p>
                <p>취소/교환/반품</p>
                <p>배송문의</p>
                <p>상품후기</p>
                <p>미확인입금자명단</p>
                <p>VIP전용</p>
            </div>
            <div class=footer-info>
                <h2>계좌정보</h2>
                <p>KB 400000-01-200000</p>
                <p>농협 300-0000-0000-00</p>
                <p>우리 1111-111-888888</p>
                <p>신한 111-111-111111</p>
                <p>예금주 : (주)유기농</p>
            </div>
            <div class=footer-info>

                <h2>ABOUT MAYBLUE</h2>
                <p>(주)유기농 | 대표 이진호</p>

                <p>전화 1544-1544 | 팩스 02-1234-5678</p>

                <p>경기도 광명시 *** *** *** 건물 (202 1) (우)10000</p>

                <p>사업자등록번호 200-00-22222</p>

                <p>개인정보관리책임자 이진호</p>

                <p>제휴문의 uginongeasynong@uginong.com</p>
            </div>
        </div>
    </footer>



</body>

</html>