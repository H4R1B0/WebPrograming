<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
    <link rel="shortcut icon" href="resources/img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="resources/img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="resources/img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="resources/img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="resources/img/apple-touch-icon-144x144-precomposed.png">
	
    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&display=swap" rel="stylesheet">

    <!-- BASE CSS -->
    <link href="resources/css/bootstrap.custom.min.css" rel="stylesheet">
    <link href="resources/css/style.css" rel="stylesheet">

	<!-- SPECIFIC CSS -->
    <link href="resources/css/home_1.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="resources/css/custom.css" rel="stylesheet">

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
							<a href="/"><img src="resources/img/Logo.png" alt="" width="120" height="40"></a>
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
								<a href="/"><img src="resources/img/Logo.png" alt="" width="100" height="35"></a>
								<a href="#" class="open_close" id="close_in"><i class="ti-close"></i></a>
							</div>-->
							<ul class="topmenu">
								<li class="submenu">
									<a href="javascript:void(0);" class="show-submenu">런치박스 메뉴</a>
									<ul>
										<li><a href="salad-list.html">런치박스 샐러드</a></li>
										<li><a href="lunchbox-list.html">런치박스 도시락</a></li>
										<li><a href="set-list.html">런치박스 세트</a></li>
									</ul>
								</li>
								<li class="submenu">
									<a href="javascript:void(0);" class="show-submenu">게시판</a>
									<ul>
										<li><a href="board.html">런치박스 후기</a></li>
										<li><a href="listing-grid-2-full.html">QnA</a></li>
										<li><a href="listing-grid-3.html">이벤트</a></li>
									</ul>
									<!-- /menu-wrapper -->
								</li>								
								<li>
									<a href="introduction.html">회사 소개</a>
								</li>																
							</ul>
							<ul class="toplogin">
								<li><a href="login.html">로그인</a></li>
								<li><a href="register.html">회원가입</a></li>
								<li><a href="cart.html">장바구니</a></li>
							</ul>
						</div>
						<!--/main-menu -->
					</nav>
				</div>
				<!-- /row -->
			</div>
		</div>
		<!-- /main_header -->
		<!--	
		<div class="main_nav Sticky">
			<div class="container">
				<div class="row small-gutters">
					<div class="col-xl-3 col-lg-3 col-md-3">
						<nav class="categories">
							<ul class="clearfix">
								<li><span>
										<a href="#">
											<span class="hamburger hamburger--spin">
												<span class="hamburger-box">
													<span class="hamburger-inner"></span>
												</span>
											</span>
											Categories
										</a>
									</span>
									<div id="menu">
										<ul>
											<li><span><a href="#0">Collections</a></span>
												<ul>
													<li><a href="listing-grid-1-full.html">Trending</a></li>
													<li><a href="listing-grid-2-full.html">Life style</a></li>
													<li><a href="listing-grid-3.html">Running</a></li>
													<li><a href="listing-grid-4-sidebar-left.html">Training</a></li>
													<li><a href="listing-grid-5-sidebar-right.html">View all Collections</a></li>
												</ul>
											</li>
											<li><span><a href="#">Men</a></span>
												<ul>
													<li><a href="listing-grid-6-sidebar-left.html">Offers</a></li>
													<li><a href="listing-grid-7-sidebar-right.html">Shoes</a></li>
													<li><a href="listing-row-1-sidebar-left.html">Clothing</a></li>
													<li><a href="listing-row-3-sidebar-left.html">Accessories</a></li>
													<li><a href="listing-row-4-sidebar-extended.html">Equipment</a></li>
												</ul>
											</li>
											<li><span><a href="#">Women</a></span>
												<ul>
													<li><a href="listing-grid-1-full.html">Best Sellers</a></li>
													<li><a href="listing-grid-2-full.html">Clothing</a></li>
													<li><a href="listing-grid-3.html">Accessories</a></li>
													<li><a href="listing-grid-4-sidebar-left.html">Shoes</a></li>
												</ul>
											</li>
											<li><span><a href="#">Boys</a></span>
												<ul>
													<li><a href="listing-grid-6-sidebar-left.html">Easy On Shoes</a></li>
													<li><a href="listing-grid-7-sidebar-right.html">Clothing</a></li>
													<li><a href="listing-row-3-sidebar-left.html">Must Have</a></li>
													<li><a href="listing-row-4-sidebar-extended.html">All Boys</a></li>
												</ul>
											</li>
											<li><span><a href="#">Girls</a></span>
												<ul>
													<li><a href="listing-grid-1-full.html">New Releases</a></li>
													<li><a href="listing-grid-2-full.html">Clothing</a></li>
													<li><a href="listing-grid-3.html">Sale</a></li>
													<li><a href="listing-grid-4-sidebar-left.html">Best Sellers</a></li>
												</ul>
											</li>
											<li><span><a href="#">Customize</a></span>
												<ul>
													<li><a href="listing-row-1-sidebar-left.html">For Men</a></li>
													<li><a href="listing-row-2-sidebar-right.html">For Women</a></li>
													<li><a href="listing-row-4-sidebar-extended.html">For Boys</a></li>
													<li><a href="listing-grid-1-full.html">For Girls</a></li>
												</ul>
											</li>
										</ul>
									</div>
								</li>
							</ul>
						</nav>
					</div>
					<div class="col-xl-6 col-lg-7 col-md-6 d-none d-md-block">
						<div class="custom-search-input">
							<input type="text" placeholder="Search over 10.000 products">
							<button type="submit"><i class="header-icon_search_custom"></i></button>
						</div>
					</div>
					<div class="col-xl-3 col-lg-2 col-md-3">
						<ul class="top_tools">
							<li>
								<div class="dropdown dropdown-cart">
									<a href="html/cart.html" class="cart_bt"><strong>2</strong></a>
									<div class="dropdown-menu">
										<ul>
											<li>
												<a href="product-detail-1.html">
													<figure><img src="resources/img/products/product_placeholder_square_small.jpg" data-src="resources/img/products/shoes/thumb/1.jpg" alt="" width="50" height="50" class="lazy"></figure>
													<strong><span>1x Armor Air x Fear</span>$90.00</strong>
												</a>
												<a href="#0" class="action"><i class="ti-trash"></i></a>
											</li>
											<li>
												<a href="product-detail-1.html">
													<figure><img src="resources/img/products/product_placeholder_square_small.jpg" data-src="resources/img/products/shoes/thumb/2.jpg" alt="" width="50" height="50" class="lazy"></figure>
													<strong><span>1x Armor Okwahn II</span>$110.00</strong>
												</a>
												<a href="0" class="action"><i class="ti-trash"></i></a>
											</li>
										</ul>
										<div class="total_drop">
											<div class="clearfix"><strong>Total</strong><span>$200.00</span></div>
											<a href="html/cart.html" class="btn_1 outline">View Cart</a><a href="checkout.html" class="btn_1">Checkout</a>
										</div>
									</div>
								</div>
		-->
								<!-- /dropdown-cart-->
		<!--
							</li>
							<li>
								<a href="#0" class="wishlist"><span>Wishlist</span></a>
							</li>
							<li>
								<div class="dropdown dropdown-access">
									<a href="account.html" class="access_link"><span>Account</span></a>
									<div class="dropdown-menu">
										<a href="account.html" class="btn_1">Sign In or Sign Up</a>
										<ul>
											<li>
												<a href="track-order.html"><i class="ti-truck"></i>Track your Order</a>
											</li>
											<li>
												<a href="account.html"><i class="ti-package"></i>My Orders</a>
											</li>
											<li>
												<a href="account.html"><i class="ti-user"></i>My Profile</a>
											</li>
											<li>
												<a href="help.html"><i class="ti-help-alt"></i>Help and Faq</a>
											</li>
										</ul>
									</div>
								</div>
		-->
								<!-- /dropdown-access-->
		<!--
							</li>
							<li>
								<a href="javascript:void(0);" class="btn_search_mob"><span>Search</span></a>
							</li>
							<li>
								<a href="#menu" class="btn_cat_mob">
									<div class="hamburger hamburger--spin" id="hamburger">
										<div class="hamburger-box">
											<div class="hamburger-inner"></div>
										</div>
									</div>
									Categories
								</a>
							</li>
						</ul>
					</div>
				</div>
		-->
				<!-- /row -->
		<!--
			</div>
			<div class="search_mob_wp">
				<input type="text" class="form-control" placeholder="Search over 10.000 products">
				<input type="submit" class="btn_1 full-width" value="Search">
			</div>
		-->
			<!-- /search_mobile -->
		<!--</div>-->
		
		<!-- /main_nav -->
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
											4000&#8361; ~ 7000&#8361;
										</p>
										<div class="owl-slide-animated owl-slide-cta"><a class="btn_1" href="salad-list.html" role="button">바로 가기</a></div>
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
											5000&#8361; ~ 9000&#8361;
										</p>
										<div class="owl-slide-animated owl-slide-cta"><a class="btn_1" href="lunchbox-list.html" role="button">바로 가기</a></div>
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

		<!--
		<ul id="banners_grid" class="clearfix">
			<li>
				<a href="#0" class="img_container">
					<img src="resources/img/banners_cat_placeholder.jpg" data-src="resources/img/banner_1.jpg" alt="" class="lazy">
					<div class="short_info opacity-mask" data-opacity-mask="rgba(0, 0, 0, 0.5)">
						<h3>Men's Collection</h3>
						<div><span class="btn_1">Shop Now</span></div>
					</div>
				</a>
			</li>
			<li>
				<a href="#0" class="img_container">
					<img src="resources/img/banners_cat_placeholder.jpg" data-src="resources/img/banner_2.jpg" alt="" class="lazy">
					<div class="short_info opacity-mask" data-opacity-mask="rgba(0, 0, 0, 0.5)">
						<h3>Womens's Collection</h3>
						<div><span class="btn_1">Shop Now</span></div>
					</div>
				</a>
			</li>
			<li>
				<a href="#0" class="img_container">
					<img src="resources/img/banners_cat_placeholder.jpg" data-src="resources/img/banner_3.jpg" alt="" class="lazy">
					<div class="short_info opacity-mask" data-opacity-mask="rgba(0, 0, 0, 0.5)">
						<h3>Kids's Collection</h3>
						<div><span class="btn_1">Shop Now</span></div>
					</div>
				</a>
			</li>
		</ul>
		-->
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
							<a href="lunchbox_1-detail.html">
								<img class="img-fluid lazy" src="resources/img/products/product_placeholder_square_medium.jpg" data-src="resources/img/products/lunchbox_1.png" alt="">
							</a>
							<!-- <div data-countdown="2019/05/15" class="countdown"></div> -->
						</figure>
						<div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
						<a href="lunchbox_1-detail.html">
							<h3>소불고기 도시락</h3>
						</a>
						<div class="price_box">
							<span class="new_price">6000&#8361;</span>
						</div>
						<ul>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>즐겨찾기에 추가</span></a></li>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>가격 비교하기</span></a></li>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>장바구니에 넣기</span></a></li>
						</ul>
					</div>
					<!-- /grid_item -->
				</div>
				<!-- /col 1 -->
				<div class="col-6 col-md-4 col-xl-3">
					<div class="grid_item">
						<!-- <span class="ribbon off">-30%</span> -->
						<figure>
							<a href="salad_1-detail.html">
								<img class="img-fluid lazy" src="resources/img/products/product_placeholder_square_medium.jpg" data-src="resources/img/products/salad_1.png" alt="">
							</a>
							<!-- <div data-countdown="2019/05/10" class="countdown"></div> -->
						</figure>
						<div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
						<a href="salad_1-detail.html">
							<h3>로스트 치킨 샐러드</h3>
						</a>
						<div class="price_box">
							<span class="new_price">5000&#8361;</span>
						</div>
						<ul>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>즐겨찾기에 추가</span></a></li>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>가격 비교하기</span></a></li>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>장바구니에 넣기</span></a></li>
						</ul>
					</div>
					<!-- /grid_item -->
				</div>
				<!-- /col 2 -->
				<div class="col-6 col-md-4 col-xl-3">
					<div class="grid_item">
						<!-- <span class="ribbon off">-50%</span> -->
						<figure>
							<a href="salad_2-detail.html">
								<img class="img-fluid lazy" src="resources/img/products/product_placeholder_square_medium.jpg" data-src="resources/img/products/salad_2.png" alt="">
							</a>
							<!-- <div data-countdown="2019/05/21" class="countdown"></div> -->
						</figure>
						<div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
						<a href="salad_2-detail.html">
							<h3>갈릭 쉬림프 샐러드</h3>
						</a>
						<div class="price_box">
							<span class="new_price">5000&#8361;</span>
						</div>
						<ul>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>즐겨찾기에 추가</span></a></li>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>가격 비교하기</span></a></li>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>장바구니에 넣기</span></a></li>
						</ul>
					</div>
					<!-- /grid_item -->
				</div>
				<!-- /col 3 -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
		
		
		<!-- <div class="featured lazy" data-bg="url(img/featured_home.jpg)">
			<div class="opacity-mask d-flex align-items-center" data-opacity-mask="rgba(0, 0, 0, 0.5)">
				<div class="container margin_60">
					<div class="row justify-content-center justify-content-md-start">
						<div class="col-lg-6 wow" data-wow-offset="150">
							<h3>Armor<br>Air Color 720</h3>
							<p>Lightweight cushioning and durable support with a Phylon midsole</p>
							<div class="feat_text_block">
								<div class="price_box">
									<span class="new_price">$90.00</span>
									<span class="old_price">$170.00</span>
								</div>
								<a class="btn_1" href="listing-grid-1-full.html" role="button">Shop Now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>-->
		<!-- /featured -->

		<!-- <div class="container margin_60_35">
			<div class="main_title">
				<h2>Featured</h2>
				<span>Products</span>
				<p>Cum doctus civibus efficiantur in imperdiet deterruisset</p>
			</div>
			<div class="owl-carousel owl-theme products_carousel">
				<div class="item">
					<div class="grid_item">
						<span class="ribbon new">New</span>
						<figure>
							<a href="product-detail-1.html">
								<img class="owl-lazy" src="resources/img/products/product_placeholder_square_medium.jpg" data-src="resources/img/products/shoes/4.jpg" alt="">
							</a>
						</figure>
						<div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
						<a href="product-detail-1.html">
							<h3>ACG React Terra</h3>
						</a>
						<div class="price_box">
							<span class="new_price">$110.00</span>
						</div>
						<ul>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to cart</span></a></li>
						</ul>
					</div>
					/grid_item
				</div>
				/item
				<div class="item">
					<div class="grid_item">
						<span class="ribbon new">New</span>
						<figure>
							<a href="product-detail-1.html">
								<img class="owl-lazy" src="resources/img/products/product_placeholder_square_medium.jpg" data-src="resources/img/products/shoes/5.jpg" alt="">
							</a>
						</figure>
						<div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
						<a href="product-detail-1.html">
							<h3>Air Zoom Alpha</h3>
						</a>
						<div class="price_box">
							<span class="new_price">$140.00</span>
						</div>
						<ul>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to cart</span></a></li>
						</ul>
					</div>
					/grid_item
				</div>
				/item
				<div class="item">
					<div class="grid_item">
						<span class="ribbon hot">Hot</span>
						<figure>
							<a href="product-detail-1.html">
								<img class="owl-lazy" src="resources/img/products/product_placeholder_square_medium.jpg" data-src="resources/img/products/shoes/8.jpg" alt="">
							</a>
						</figure>
						<div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
						<a href="product-detail-1.html">
							<h3>Air Color 720</h3>
						</a>
						<div class="price_box">
							<span class="new_price">$120.00</span>
						</div>
						<ul>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to cart</span></a></li>
						</ul>
					</div>
					/grid_item
				</div>
				/item
				<div class="item">
					<div class="grid_item">
						<span class="ribbon off">-30%</span>
						<figure>
							<a href="product-detail-1.html">
								<img class="owl-lazy" src="resources/img/products/product_placeholder_square_medium.jpg" data-src="resources/img/products/shoes/2.jpg" alt="">
							</a>
						</figure>
						<div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
						<a href="product-detail-1.html">
							<h3>Okwahn II</h3>
						</a>
						<div class="price_box">
							<span class="new_price">$90.00</span>
							<span class="old_price">$170.00</span>
						</div>
						<ul>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to cart</span></a></li>
						</ul>
					</div>
					/grid_item
				</div>
				/item
				<div class="item">
					<div class="grid_item">
						<span class="ribbon off">-50%</span>
						<figure>
							<a href="product-detail-1.html">
								<img class="owl-lazy" src="resources/img/products/product_placeholder_square_medium.jpg" data-src="resources/img/products/shoes/3.jpg" alt="">
							</a>
						</figure>
						<div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
						<a href="product-detail-1.html">
							<h3>Air Wildwood ACG</h3>
						</a>
						<div class="price_box">
							<span class="new_price">$75.00</span>
							<span class="old_price">$155.00</span>
						</div>
						<ul>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
							<li><a href="#0" class="tooltip-1" data-toggle="tooltip" data-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to cart</span></a></li>
						</ul>
					</div>
					/grid_item
				</div>
				/item
			</div>
			/products_carousel
		</div> -->
		<!-- /container -->
		
		<!-- <div class="bg_gray">
			<div class="container margin_30">
				<div id="brands" class="owl-carousel owl-theme">
					<div class="item">
						<a href="#0"><img src="resources/img/brands/placeholder_brands.png" data-src="resources/img/brands/logo_1.png" alt="" class="owl-lazy"></a>
					</div>/item
					<div class="item">
						<a href="#0"><img src="resources/img/brands/placeholder_brands.png" data-src="resources/img/brands/logo_2.png" alt="" class="owl-lazy"></a>
					</div>/item
					<div class="item">
						<a href="#0"><img src="resources/img/brands/placeholder_brands.png" data-src="resources/img/brands/logo_3.png" alt="" class="owl-lazy"></a>
					</div>/item
					<div class="item">
						<a href="#0"><img src="resources/img/brands/placeholder_brands.png" data-src="resources/img/brands/logo_4.png" alt="" class="owl-lazy"></a>
					</div>/item
					<div class="item">
						<a href="#0"><img src="resources/img/brands/placeholder_brands.png" data-src="resources/img/brands/logo_5.png" alt="" class="owl-lazy"></a>
					</div>/item
					<div class="item">
						<a href="#0"><img src="resources/img/brands/placeholder_brands.png" data-src="resources/img/brands/logo_6.png" alt="" class="owl-lazy"></a>
					</div>/item 
				</div>/carousel
			</div>/container
		</div> -->
		<!-- /bg_gray -->

		<!-- <div class="container margin_60_35">
			<div class="main_title">
				<h2>Latest News</h2>
				<span>Blog</span>
				<p>Cum doctus civibus efficiantur in imperdiet deterruisset</p>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<a class="box_news" href="blog.html">
						<figure>
							<img src="resources/img/blog-thumb-placeholder.jpg" data-src="resources/img/blog-thumb-1.jpg" alt="" width="400" height="266" class="lazy">
							<figcaption><strong>28</strong>Dec</figcaption>
						</figure>
						<ul>
							<li>by Mark Twain</li>
							<li>20.11.2017</li>
						</ul>
						<h4>Pri oportere scribentur eu</h4>
						<p>Cu eum alia elit, usu in eius appareat, deleniti sapientem honestatis eos ex. In ius esse ullum vidisse....</p>
					</a>
				</div>
				/box_news
				<div class="col-lg-6">
					<a class="box_news" href="blog.html">
						<figure>
							<img src="resources/img/blog-thumb-placeholder.jpg" data-src="resources/img/blog-thumb-2.jpg" alt="" width="400" height="266" class="lazy">
							<figcaption><strong>28</strong>Dec</figcaption>
						</figure>
						<ul>
							<li>By Jhon Doe</li>
							<li>20.11.2017</li>
						</ul>
						<h4>Duo eius postea suscipit ad</h4>
						<p>Cu eum alia elit, usu in eius appareat, deleniti sapientem honestatis eos ex. In ius esse ullum vidisse....</p>
					</a>
				</div>
				/box_news
				<div class="col-lg-6">
					<a class="box_news" href="blog.html">
						<figure>
							<img src="resources/img/blog-thumb-placeholder.jpg" data-src="resources/img/blog-thumb-3.jpg" alt="" width="400" height="266" class="lazy">
							<figcaption><strong>28</strong>Dec</figcaption>
						</figure>
						<ul>
							<li>By Luca Robinson</li>
							<li>20.11.2017</li>
						</ul>
						<h4>Elitr mandamus cu has</h4>
						<p>Cu eum alia elit, usu in eius appareat, deleniti sapientem honestatis eos ex. In ius esse ullum vidisse....</p>
					</a>
				</div>
				/box_news
				<div class="col-lg-6">
					<a class="box_news" href="blog.html">
						<figure>
							<img src="resources/img/blog-thumb-placeholder.jpg" data-src="resources/img/blog-thumb-4.jpg" alt="" width="400" height="266" class="lazy">
							<figcaption><strong>28</strong>Dec</figcaption>
						</figure>
						<ul>
							<li>By Paula Rodrigez</li>
							<li>20.11.2017</li>
						</ul>
						<h4>Id est adhuc ignota delenit</h4>
						<p>Cu eum alia elit, usu in eius appareat, deleniti sapientem honestatis eos ex. In ius esse ullum vidisse....</p>
					</a>
				</div>
				/box_news
			</div>
			/row
		</div> -->
		<!-- /container -->
	</main>
	<!-- /main -->
		
	<footer class="revealed">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<h3 data-target="#collapse_1">빠른 링크</h3>
					<div class="collapse dont-collapse-sm links" id="collapse_1">
						<ul>
							<li><a href="seeyousoon.html">고객센터</a></li>
							<li><a href="seeyousoon.html">질문 게시판</a></li>
							<li><a href="profile.html">마이페이지</a></li>
							<li><a href="board.html">런치박스 후기</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3 data-target="#collapse_2">런치박스 메뉴</h3>
					<div class="collapse dont-collapse-sm links" id="collapse_2">
						<ul>
							<li><a href="salad-list.html">런치박스 샐러드</a></li>
							<li><a href="lunchbox-list.html">런치박스 도시락</a></li>
							<li><a href="set-list.html">런치박스 세트</a></li>
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
						<li><a href="seeyousoon.html">이용약관</a></li>
						<li><a href="seeyousoon.html">개인정보처리방침</a></li>
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
    <script src="resources/js/common_scripts.min.js"></script>
    <script src="resources/js/main.js"></script>
	
	<!-- SPECIFIC SCRIPTS -->
	<script src="resources/js/carousel-home.min.js"></script>

</body>
</html>