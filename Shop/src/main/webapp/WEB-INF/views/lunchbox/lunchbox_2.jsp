<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Ansonika">
    <title>런치박스</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">
	
    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&display=swap" rel="stylesheet">

    <!-- BASE CSS -->
    <link href="/resources/css/bootstrap.custom.min.css" rel="stylesheet">
    <link href="/resources/css/style.css" rel="stylesheet">

	<!-- SPECIFIC CSS -->
    <link href="/resources/css/product_page.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="/resources/css/custom.css" rel="stylesheet">

</head>

<body>
	
	<div id="page">
		
	<header class="version_1">
		<div class="layer"></div><!-- Mobile menu overlay mask -->
		<div class="main_header">
			<div class="container">
				<div class="row small-gutters">
					<div class="col-xl-3 col-lg-3 d-lg-flex align-items-center">
						<div id="logo">
							<a href="/"><img src="/resources/img/Logo.png" alt="" width="120" height="40"></a>
						</div>
					</div>
					<nav class="col-xl-6 col-lg-7">
						<a class="open_close" href="javascript:void(0);">
							<div class="hamburger hamburger--spin">
								<div class="hamburger-box">
									<div class="hamburger-inner"></div>
								</div>
							</div>
						</a>
						<!-- Mobile menu button -->
						<div class="main-menu">
							
							<ul class="topmenu">
								<li class="submenu">
									<a href="javascript:void(0);" class="show-submenu">런치박스 메뉴</a>
									<ul>
										<li><a href="/salad/salad-list">런치박스 샐러드</a></li>
										<li><a href="/lunchbox/lunchbox-list">런치박스 도시락</a></li>
										
									</ul>
								</li>
								<li class="submenu">
									<a href="javascript:void(0);" class="show-submenu">게시판</a>
									<ul>
										<li><a href="/board/boardList">커뮤니티</a></li>
										<li><a href="/QNA.html">QnA</a></li>
										<li><a href="/Event.html">이벤트</a></li>
									</ul>
									<!-- /menu-wrapper -->
								</li>								
								<li>
									<a href="/introduction">회사 소개</a>
								</li>																
							</ul>
							<ul class="toplogin">
								<c:if test="${member == null}">
									<li><a href="/member/login">로그인</a></li>
									<li><a href="/member/register">회원가입</a></li>
								</c:if>
								<c:if test="${member != null}">
									<li><a>${member.mem_id}님</a></li>
									<li><a href="/member/logout">로그아웃</a></li>
								</c:if>
								<li><a href="/cart/cartList">장바구니</a></li>
							</ul>
						</div>
						<!--/main-menu -->
					</nav>
				</div>
				<!-- /row -->
			</div>
		</div>
		<!-- /main_header -->

		
		<!-- /main_nav -->
	</header>
	<!-- /header -->

	<main>
	    <div class="container margin_30">
	        
	        <div class="row">
	            <div class="col-md-6">
	                <div class="all">
	                    <div class="slider">
	                        <div class="owl-carousel owl-theme main">
	                            <div style="background-image: url(/resources/img/products/lunchboxes/2_1.png);" class="item-box"></div>
	                            <div style="background-image: url(/resources/img/products/lunchboxes/2_2.png);" class="item-box"></div>
	                            <div style="background-image: url(/resources/img/products/lunchboxes/2_3.png);" class="item-box"></div>
	                            <div style="background-image: url(/resources/img/products/lunchboxes/2_4.png);" class="item-box"></div>
	                            <div style="background-image: url(/resources/img/products/lunchboxes/2_5.png);" class="item-box"></div>
	                            <div style="background-image: url(/resources/img/products/lunchboxes/2_6.png);" class="item-box"></div>
	                        </div>
	                        <div class="left nonl"><i class="ti-angle-left"></i></div>
	                        <div class="right"><i class="ti-angle-right"></i></div>
	                    </div>
	                    <div class="slider-two">
	                        <div class="owl-carousel owl-theme thumbs">
	                            <div style="background-image: url(/resources/img/products/lunchboxes/2_1.png);" class="item active"></div>
	                            <div style="background-image: url(/resources/img/products/lunchboxes/2_2.png);" class="item"></div>
	                            <div style="background-image: url(/resources/img/products/lunchboxes/2_3.png);" class="item"></div>
	                            <div style="background-image: url(/resources/img/products/lunchboxes/2_4.png);" class="item"></div>
	                            <div style="background-image: url(/resources/img/products/lunchboxes/2_5.png);" class="item"></div>
	                            <div style="background-image: url(/resources/img/products/lunchboxes/2_6.png);" class="item"></div>
	                        </div>
	                        <div class="left-t nonl-t"></div>
	                        <div class="right-t"></div>
	                    </div>
	                </div>
	            </div>
	            <div class="col-md-6">
	                <div class="breadcrumbs">
	                    <ul>
	                        <li><a href="/">홈</a></li>
	                        <li><a href="/lunchbox/lunchbox-list">런치박스 도시락</a></li>
	                        <li>옛날 소세지 도시락</li>
	                    </ul>
	                </div>
	                <!-- /page_header -->
	                <div class="prod_info">
	                    <h1>옛날 소세지 도시락</h1>
	                    <span class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i><em>4 reviews</em></span>
	                    <!-- 내용 생략 -->
	                    <p></p>
	                    <form name='insertForm' method="post" action="/lunchbox/insertlunchbox">
	                    	<input type="hidden" value="5" id="product_id" class="product_id_5" name="product_id">
		                    <div class="prod_options">
		                        <div class="row">
		                            <label class="col-xl-5 col-lg-5  col-md-6 col-6"><strong>개수</strong></label>
		                            <div class="col-xl-4 col-lg-5 col-md-6 col-6">
		                                <div class="numbers-row">
		                                    <input type="text" value="1" id="amount" class="qty2" name="amount">
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="row">
		                        <div class="col-lg-5 col-md-6">
		                            <div class="price_main"><span class="new_price">6000&#8361;</span></div>
		                        </div>
		                        <div class="col-lg-4 col-md-6">
		                            <button type="submit" class="btn_1">장바구니에 추가</button>
		                        </div>
		                    </div>
	                    </form>
	                </div>
	            </div>
	        </div>
	        <!-- /row -->
	    </div>
	    <!-- /container -->
	    
	    <div class="tabs_product">
	        <div class="container">
	            <ul class="nav nav-tabs" role="tablist">
	                <li class="nav-item">
	                    <a id="tab-A" href="#pane-A" class="nav-link active" data-toggle="tab" role="tab">설명</a>
	                </li>
	            </ul>
	        </div>
	    </div>
	    <!-- /tabs_product -->
	    <div class="tab_content_wrapper">
	        <div class="container">
	            <div class="tab-content" role="tablist">
	                <div id="pane-A" class="card tab-pane fade active show" role="tabpanel" aria-labelledby="tab-A">
	                    <div class="card-header" role="tab" id="heading-A">
	                        <h5 class="mb-0">
	                            <a class="collapsed" data-toggle="collapse" href="#collapse-A" aria-expanded="false" aria-controls="collapse-A">
	                                Description
	                            </a>
	                        </h5>
	                    </div>
	                    <div id="collapse-A" class="collapse" role="tabpanel" aria-labelledby="heading-A">
	                        <div class="card-body">
	                            <div class="row justify-content-between">
	                                <div class="col-lg-6">
	                                    <h3>자세히</h3>
	                                    <p>건강한 오곡밥과 <strong>분홍소세지</strong>, <strong>계란 프라이</strong><br><strong>새콤한 볶음 김치</strong>, <strong>고소한 멸치볶음.</strong></p>
	                                    <p><strong>현미</strong>, <strong>보리</strong>, <strong>율무</strong>, <strong>팥</strong>, <strong>옛날 소세지</strong>, <strong>계란 프라이</strong>, <strong>볶음 김치</strong>, <strong>멸치 볶음</strong>이 들어갑니다.</p>
	                                </div>
	                                <div class="col-lg-5">
	                                    <h3>상세</h3>
	                                    <div class="table-responsive">
	                                        <table class="table table-sm table-striped">
	                                            <tbody>
	                                            	<tr>
	                                                    <td><strong>현미</strong></td>
	                                                    <td>국산</td>
	                                                </tr>
	                                                <tr>
	                                                    <td><strong>보리</strong></td>
	                                                    <td>국산</td>
	                                                </tr>
	                                                <tr>
	                                                    <td><strong>율무</strong></td>
	                                                    <td>페루산</td>
	                                                </tr>
	                                                <tr>
	                                                    <td><strong>팥</strong></td>
	                                                    <td>국산</td>
	                                                </tr>
	                                                <tr>
	                                                    <td><strong>옛날 소세지</strong></td>
	                                                    <td>미국산</td>
	                                                </tr>
	                                                <tr>
	                                                    <td><strong>계란 프라이</strong></td>
	                                                    <td>국산</td>
	                                                </tr>
	                                                <tr>
	                                                    <td><strong>볶음 김치</strong></td>
	                                                    <td>국내산</td>
	                                                </tr>
	                                                <tr>
	                                                    <td><strong>멸치 볶음</strong></td>
	                                                    <td>국내산</td>
	                                                </tr>
	                                            </tbody>
	                                        </table>
	                                    </div>
	                                    <!-- /table-responsive -->
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- /TAB A -->
	            </div>
	            <!-- /tab-content -->
	        </div>
	        <!-- /container -->
	    </div>
	    <!-- /tab_content_wrapper -->

	    <div class="container margin_60_35">
	        <div class="main_title">
	            <h2>관련된 메뉴들</h2>
	            <p>다양한 메뉴들이 있어요.</p>
	        </div>
	        <div class="owl-carousel owl-theme products_carousel">
	            <div class="item">
	                <div class="grid_item">
	                    <figure>
	                        <a href="/salad/salad_1">
	                            <img class="owl-lazy" src="/resources/img/products/product_placeholder_square_medium.jpg" data-src="/resources/img/products/salad_1.png" alt="">
	                        </a>
	                    </figure>
	                    <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
	                    <a href="/salad/salad_1">
	                        <h3>로스트 치킨 샐러드</h3>
	                    </a>
	                    <div class="price_box">
	                        <span class="new_price">5000&#8361;</span>
	                    </div>
	                    <ul>
	                        <li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="장바구니에 추가"><i class="ti-shopping-cart"></i><span>장바구니에 추가</span></a></li>
	                    </ul>
	                </div>
	                <!-- /grid_item -->
	            </div>
	            <!-- /item -->
	            <div class="item">
	                <div class="grid_item">
	                    <figure>
	                        <a href="/salad/salad_2">
	                            <img class="owl-lazy" src="/resources/img/products/product_placeholder_square_medium.jpg" data-src="/resources/img/products/salad_2.png" alt="">
	                        </a>
	                    </figure>
	                    <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
	                    <a href="/salad/salad_2">
	                        <h3>갈릭 쉬림프 샐러드</h3>
	                    </a>
	                    <div class="price_box">
	                        <span class="new_price">5000&#8361;</span>
	                    </div>
	                    <ul>
	                        <li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="장바구니에 추가"><i class="ti-shopping-cart"></i><span>장바구니에 추가</span></a></li>
	                    </ul>
	                </div>
	                <!-- /grid_item -->
	            </div>
	            <!-- /item -->
	            <div class="item">
	                <div class="grid_item">
	                    <figure>
	                        <a href="/salad/salad_3">
	                            <img class="owl-lazy" src="/resources/img/products/product_placeholder_square_medium.jpg" data-src="/resources/img/products/salad_3.png" alt="">
	                        </a>
	                    </figure>
	                    <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
	                    <a href="/salad/salad_3">
	                        <h3>두부 샐러드</h3>
	                    </a>
	                    <div class="price_box">
	                        <span class="new_price">5000&#8361;</span>
	                    </div>
	                    <ul>
	                        <li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="장바구니에 추가"><i class="ti-shopping-cart"></i><span>장바구니에 추가</span></a></li>
	                    </ul>
	                </div>
	                <!-- /grid_item -->
	            </div>
	            <!-- /item -->
	            <div class="item">
	                <div class="grid_item">
	                    <figure>
	                        <a href="/lunchbox/lunchbox_1">
	                            <img class="owl-lazy" src="/resources/img/products/product_placeholder_square_medium.jpg" data-src="/resources/img/products/lunchbox_1.png" alt="">
	                        </a>
	                    </figure>
	                    <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
	                    <a href="/lunchbox/lunchbox_1">
	                        <h3>소불고기 도시락</h3>
	                    </a>
	                    <div class="price_box">
	                        <span class="new_price">6000&#8361;</span>
	                    </div>
	                    <ul>
	                        <li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="장바구니에 추가"><i class="ti-shopping-cart"></i><span>장바구니에 추가</span></a></li>
	                    </ul>
	                </div>
	                <!-- /grid_item -->
	            </div>
	            <!-- /item -->
	            <div class="item">
	                <div class="grid_item">
	                    <figure>
	                        <a href="/lunchbox/lunchbox_3">
	                            <img class="owl-lazy" src="/resources/img/products/product_placeholder_square_medium.jpg" data-src="/resources/img/products/lunchbox_3.png" alt="">
	                        </a>
	                    </figure>
	                    <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
	                    <a href="/lunchbox/lunchbox_3">
	                        <h3>바베큐 치킨 도시락</h3>
	                    </a>
	                    <div class="price_box">
	                        <span class="new_price">6000&#8361;</span>
	                    </div>
	                    <ul>
	                        <li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="장바구니에 추가"><i class="ti-shopping-cart"></i><span>장바구니에 추가</span></a></li>
	                    </ul>
	                </div>
	                <!-- /grid_item -->
	            </div>
	            <!-- /item -->
	        </div>
	        <!-- /products_carousel -->
	    </div>
	    <!-- /container -->

	    
		<!--/feat-->

	</main>
	<!-- /main -->
	
	<footer class="revealed">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<h3 data-target="#collapse_1">빠른 링크</h3>
					<div class="collapse dont-collapse-sm links" id="collapse_1">
						<ul>
							<li><a href="/seeyousoon">고객센터</a></li>
							<li><a href="/seeyousoon">질문 게시판</a></li>
							<li><a href="/profile.html">마이페이지</a></li>
							<li><a href="/board/boardList">커뮤니티</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3 data-target="#collapse_2">런치박스 메뉴</h3>
					<div class="collapse dont-collapse-sm links" id="collapse_2">
						<ul>
							<li><a href="/salad/salad-list">런치박스 샐러드</a></li>
							<li><a href="/lunchbox/lunchbox-list">런치박스 도시락</a></li>
							
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
						<h3 data-target="#collapse_3">Contacts</h3>
					<div class="collapse dont-collapse-sm contacts" id="collapse_3">
						<ul>
							<li><i class="ti-home"></i>영업비밀</li>
							<li><i class="ti-headphone-alt"></i>010-0000-0000</li>
							<li><i class="ti-email"></i><button class="email_btn" onclick="copy('info@lunchbox.com');alert('메일이 복사되었습니다.');">info@lunchbox.com</button></li>
							<script>
							function copy(val) {
							  var dummy = document.createElement("textarea");
							  document.body.appendChild(dummy);
							  dummy.value = val;
							  dummy.select();
							  document.execCommand("copy");
							  document.body.removeChild(dummy);
							}
							</script>
							
						</ul>
					</div>
				</div>
				
			</div>
			<!-- /row-->
			<hr>
			<div class="row add_bottom_25">
				<div class="col-lg-6">
					
				</div>
				<div class="col-lg-6">
					<ul class="additional_links">
						<li><a href="/seeyousoon">이용약관</a></li>
						<li><a href="/seeyousoon">개인정보처리방침</a></li>
						<li><span>© 2020 런치박스</span></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
	<!--/footer-->
	</div>
	<!-- page -->
 	<!-- COMMON SCRIPTS -->
    <script src="/resources/js/common_scripts.min.js"></script>
    <script src="/resources/js/main.js"></script>
  
    <!-- SPECIFIC SCRIPTS -->
    <script  src="/resources/js/carousel_with_thumbs.js"></script>

</body>

</html>
