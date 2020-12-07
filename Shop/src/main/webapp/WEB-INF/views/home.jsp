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
    <link rel="shortcut icon" href="/resources/img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="/resources/img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="/resources/img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="/resources/img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="/resources/img/apple-touch-icon-144x144-precomposed.png">
	
    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&display=swap" rel="stylesheet">

    <!-- BASE CSS -->
    <link href="/resources/css/bootstrap.custom.min.css" rel="stylesheet">
    <link href="/resources/css/style.css" rel="stylesheet">

	<!-- SPECIFIC CSS -->
    <link href="/resources/css/home_1.css" rel="stylesheet">

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
					<!-- Modal -->		
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
							<!-- 필요없는듯하여 주서 처리 -->
							<!-- 
							<div id="header_menu">
								<a href="/"><img src="/resources/img/Logo.png" alt="" width="100" height="35"></a>
								<a href="#" class="open_close" id="close_in"><i class="ti-close"></i></a>
							</div>-->
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
		
	</header>
	<!-- /header -->		
	<main>
		<div id="carousel-home">
			<div class="owl-carousel owl-theme">
				<div class="owl-slide cover" style="background-image: url(resources/img/slides/slide_home_1.png);">
					<div class="opacity-mask d-flex align-items-center" data-opacity-mask="rgba(0, 0, 0, 0.5)">
						<div class="container">
							<div class="row justify-content-center justify-content-md-end">
								<div class="col-lg-6 static">
									<div class="slide-text text-right white">
										<h2 class="owl-slide-animated owl-slide-title">런치박스 샐러드<br>맛있게 드세요!</h2>
										<p class="owl-slide-animated owl-slide-subtitle">
											5000&#8361;
										</p>
										<div class="owl-slide-animated owl-slide-cta"><a class="btn_1" href="/salad/salad-list" role="button">바로 가기</a></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--/owl-slide-->
				<div class="owl-slide cover" style="background-image: url(resources/img/slides/slide_home_2.png);">
					<div class="opacity-mask d-flex align-items-center" data-opacity-mask="rgba(0, 0, 0, 0.5)">
						<div class="container">
							<div class="row justify-content-center justify-content-md-start">
								<div class="col-lg-6 static">
									<div class="slide-text white">
										<h2 class="owl-slide-animated owl-slide-title">런치박스 도시락<br>맛있게 드세요!</h2>
										<p class="owl-slide-animated owl-slide-subtitle">
											6000&#8361;
										</p>
										<div class="owl-slide-animated owl-slide-cta"><a class="btn_1" href="/lunchbox/lunchbox-list" role="button">바로 가기</a></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--/owl-slide-->
				<div class="owl-slide cover" style="background-image: url(resources/img/slides/slide_home_3.png);">
					<div class="opacity-mask d-flex align-items-center" data-opacity-mask="rgba(0, 0, 0, 0.5)">
						<div class="container">
							<div class="row justify-content-center justify-content-md-start">
								<div class="col-lg-12 static">
									<div class="slide-text text-center black">
										<h2 class="owl-slide-animated owl-slide-title">런치박스 세트<br>상품 준비중입니다.(꾸벅)</h2>
										<!-- <p class="owl-slide-animated owl-slide-subtitle">
											8000&#8361; ~ 15000&#8361;
										</p> -->
										<!-- <div class="owl-slide-animated owl-slide-cta"><a class="btn_1" href="listing-grid-1-full.html" role="button">바로가기</a></div> -->
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--/owl-slide-->
				</div>
			</div>
			<div id="icon_drag_mobile"></div>
		</div>
		<!--/carousel-->

		<!--/banners_grid -->
		
		<div class="container margin_60_35">
			<div class="main_title">
				<h2>TOP 3</h2>
				<span>메뉴</span>
				<p>가장 인기있는 메뉴들을 만나보세요!</p>
			</div>
			<div class="row small-gutters">
				<div class="col-6 col-md-4 col-xl-3">
					<div class="grid_item">
						<figure>
							<!-- <span class="ribbon off">-30%</span> -->
							<a href="/lunchbox/lunchbox_1">
								<img class="img-fluid lazy" src="/resources/img/products/product_placeholder_square_medium.jpg" data-src="/resources/img/products/lunchbox_1.png" alt="">
							</a>
							<!-- <div data-countdown="2019/05/15" class="countdown"></div> -->
						</figure>
						<div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
						<a href="/lunchbox/lunchbox_1">
							<h3>소불고기 도시락</h3>
						</a>
						<div class="price_box">
							<span class="new_price">6000&#8361;</span>
						</div>
						<ul>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="장바구니에 넣기"><i class="ti-shopping-cart"></i><span>장바구니에 넣기</span></a></li>
						</ul>
					</div>
					<!-- /grid_item -->
				</div>
				<!-- /col 1 -->
				<div class="col-6 col-md-4 col-xl-3">
					<div class="grid_item">
						<!-- <span class="ribbon off">-30%</span> -->
						<figure>
							<a href="/salad/salad_1">
								<img class="img-fluid lazy" src="/resources/img/products/product_placeholder_square_medium.jpg" data-src="/resources/img/products/salad_1.png" alt="">
							</a>
							<!-- <div data-countdown="2019/05/10" class="countdown"></div> -->
						</figure>
						<div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
						<a href="/salad/salad_1">
							<h3>로스트 치킨 샐러드</h3>
						</a>
						<div class="price_box">
							<span class="new_price">5000&#8361;</span>
						</div>
						<ul>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="장바구니에 넣기"><i class="ti-shopping-cart"></i><span>장바구니에 넣기</span></a></li>
						</ul>
					</div>
					<!-- /grid_item -->
				</div>
				<!-- /col 2 -->
				<div class="col-6 col-md-4 col-xl-3">
					<div class="grid_item">
						<!-- <span class="ribbon off">-50%</span> -->
						<figure>
							<a href="/salad/salad_2">
								<img class="img-fluid lazy" src="/resources/img/products/product_placeholder_square_medium.jpg" data-src="/resources/img/products/salad_2.png" alt="">
							</a>
							<!-- <div data-countdown="2019/05/21" class="countdown"></div> -->
						</figure>
						<div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
						<a href="/salad/salad_2">
							<h3>갈릭 쉬림프 샐러드</h3>
						</a>
						<div class="price_box">
							<span class="new_price">5000&#8361;</span>
						</div>
						<ul>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="장바구니에 넣기"><i class="ti-shopping-cart"></i><span>장바구니에 넣기</span></a></li>
						</ul>
					</div>
					<!-- /grid_item -->
				</div>
				<!-- /col 3 -->
			</div>
			<!-- /row -->
		</div>
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
							<li><a href="/board/boardlist">커뮤니티</a></li>
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
	
	<div id="toTop"></div><!-- Back to top button -->
	
	<!-- COMMON SCRIPTS -->
    <script src="/resources/js/common_scripts.min.js"></script>
    <script src="/resources/js/main.js"></script>
	
	<!-- SPECIFIC SCRIPTS -->
	<script src="/resources/js/carousel-home.min.js"></script>

</body>
</html>