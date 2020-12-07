<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
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
    <!-- 
    <link rel="shortcut icon" href="/resources/img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="/resources/img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="/resources/img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="/resources/img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="/resources/img/apple-touch-icon-144x144-precomposed.png">
	-->
    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&display=swap" rel="stylesheet">

    <!-- BASE CSS -->
	<link href="/resources/css/bootstrap.custom.min.css" rel="stylesheet">
	<link href="/resources/css/style.css" rel="stylesheet">
	
	<!-- SPECIFIC CSS -->
    <!-- <link href="/resources/css/error_track.css" rel="stylesheet"> -->

    <!-- YOUR CUSTOM CSS -->
	<link href="/resources/css/custom.css" rel="stylesheet">
	<link href="/resources/css/login_register_page.css" rel="stylesheet">
	<script src="https://kit.fontawesome.com/f539932f95.js" crossorigin="anonymous"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
								<li><a href="/member/login">로그인</a></li>
								<li><a href="/member/register">회원가입</a></li>
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

		<div class="main_nav inner">
			
			<div class="search_mob_wp">
				<input type="text" class="form-control" placeholder="Search over 10.000 products">
				<input type="submit" class="btn_1 full-width" value="Search">
			</div>
			<!-- /search_mobile -->
		</div>
		<!-- /main_nav -->
	</header>
	<!-- /header -->
	
	<!--main-->
	<main class="login_makeuser-main">
		<div class="login_makeuser-page">
			<div class="contain">
				<div class="login-back">
					<div class="login-box">
						<div class="title">
							<a class="title_p"><img src="/resources/img/Logo.png" alt="" width="200" height="80"></a>
							<div class="title_p_text">로그인 후 이용하실 수 있습니다.</div>
						</div>
						<hr class="one">
						<div class="content-box">
						<form name='homeForm' method="post" action="/member/login">
							<div class="id_input">
								<label for="mem_id">아이디</label>
							</div>
							<div>
								<input type="text" id="mem_id" name="mem_id">
							</div>
							<div class="pw_input">
								<label for="mem_pw">비밀번호</label>
							</div>
							<div>
								<input type="password" id="mem_pw" name="mem_pw">
							</div>
							<hr class="one">		
							<div>
								<button type="submit" class="login_submit_button">로그인</button>
							</div>
						</form>
						</div>
						
						<div class="find-box">
						    <ul class="join-find">
							    <a href="/meber/id_find.html">아이디 찾기</a>
							    <span class="bar">|</span>
							    <a href="/member/pw_reset.html">비밀번호 찾기</a>
							    <span class="bar">|</span>
							    <a href="/member/register">회원가입</a>
							</ul>
						</div>
					</div>					
				</div>	
			</div>
		</div>					
	</main>
	<!--/main-->
	
	<footer class="revealed">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<h3 data-target="#collapse_1">빠른 링크</h3>
					<div class="collapse dont-collapse-sm links" id="collapse_1">
						<ul>
							<li><a href="/seeyousoon">고객센터</a></li>
							<li><a href="/seeyousoon">질문 게시판</a></li>
							<li><a href="profile.html">마이페이지</a></li>
							<li><a href="/seeyousoon">커뮤니티</a></li>
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
				<div class="col-lg-6"></div>
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
		
</body>
</html>