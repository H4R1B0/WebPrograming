<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    <link rel="shortcut icon" href="resources/img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="resources/img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="resources/img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="resources/img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="resources/img/apple-touch-icon-144x144-precomposed.png">
	-->
    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&display=swap" rel="stylesheet">

    <!-- BASE CSS -->
	<link href="../resources/css/bootstrap.custom.min.css" rel="stylesheet">
	<link href="../resources/css/style.css" rel="stylesheet">
	
	<!-- SPECIFIC CSS -->
    <!-- <link href="resources/css/error_track.css" rel="stylesheet"> -->

    <!-- YOUR CUSTOM CSS -->
	<link href="../resources/css/custom.css" rel="stylesheet">
	<link href="../resources/css/login_register_page.css" rel="stylesheet">
	<script src="https://kit.fontawesome.com/f539932f95.js" crossorigin="anonymous"></script>
	<script type="text/javascript" src="../resources/js/boardjquery.js"></script>
	<script type="text/javascript">
	
		//아이디 정규식 
		var idJ = /^[a-z0-9][a-z0-9]{4,19}$/; 
		// 비밀번호 정규식
		var pwJ = /^[A-Za-z0-9]{4,12}$/; 
		// 이름 정규식 
		var nameJ = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/; 
		// 이메일 검사 정규식 
		var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		// 휴대폰 번호 정규식 
		var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;

		
		$(document).ready(function(){
			var idchecked=false;
			//id 정규식, 중복확인
			$("#mem_id").blur(function() { 
				if($('#mem_id').val()==''){ 
					$('#id_check').text('아이디를 입력하세요.');
					$('#id_check').css('color', 'red'); 
				}
				else if(idJ.test($('#mem_id').val())!=true){
					$('#id_check').text('5~20자의 영문 소문자, 숫자만 사용 가능합니다.');
					$('#id_check').css('color', 'red');
				}
				else if($('#mem_id').val()!=''){
					var mem_id=$('#mem_id').val(); 
					$.ajax({
						url : '/member/idcheck',
						type : 'POST',
						dateType: 'json',
						contentType: "application/json; charset=UTF-8",
						data : mem_id,
						success : function(data) {
							if(data > 0){
								$('#id_check').text('중복된 아이디 입니다.');
								$('#id_check').css('color', 'red');
							}
							else{
								idchecked=true;
								$('#id_check').text('사용가능한 아이디 입니다.');
								$('#id_check').css('color', 'blue');
							}
						}
					});//ajax/// 
				}//else if 
			});//blur
			//pw 정규식 확인
			$('#mem_pw').blur(function() { 
				if (pwJ.test($('#mem_pw').val())) { 
					console.log('true'); 
					$('#pw_check').text('사용 가능한 비밀번호입니다.');
					$('#pw_check').css('color', 'blue');
					} 
				else { 
					console.log('false');
					$('#pw_check').text('4~12자의 숫자 , 문자로만 사용 가능합니다.');
					$('#pw_check').css('color', 'red'); 
				} 
			});
			//패스워드 일치 확인
			$('#mem_pw2').blur(function() {
				if (pwJ.test($('#mem_pw').val()) && $('#mem_pw').val() == $(this).val() ){
					$('#pw2_check').text('비밀번호가 일치합니다.');
					$('#pw2_check').css('color', 'blue');
				}
				else { 
					$('#pw2_check').text('비밀번호가 일치하지 않습니다.');
					$('#pw2_check').css('color', 'red'); 
				} 
				
			});

			//이름에 특수문자 들어가지 않도록 확인
			$("#mem_name").blur(function() { 
				if (nameJ.test($(this).val())) { 
					console.log(nameJ.test($(this).val()));
					$("#name_check").text('사용 가능한 이름입니다.');
					$('#name_check').css('color', 'blue');
				}
				else {
					$('#name_check').text('한글 2~4자 이내로 입력하세요. (특수기호, 공백 사용 불가)'); 
					$('#name_check').css('color', 'red'); 
				} 
			});
			//이메일 정규식 확인
			$("#mem_email").blur(function() { 
				if (mailJ.test($(this).val())) { 
					$("#email_check").text('사용 가능한 이메일입니다.');
					$('#email_check').css('color', 'blue');
				} 
				else { 
					$('#email_check').text('이메일 양식을 확인해주세요.');
					$('#email_check').css('color', 'red'); 
				} 
			});
			// 핸드폰 정규식 확인
			$('#mem_phonenum').blur(function(){ 
				if(phoneJ.test($(this).val())){ 
					console.log(nameJ.test($(this).val())); 
					$("#phone_check").text('사용 가능한 번호입니다.');
					$('#phone_check').css('color', 'blue');
				}
				else {
					$('#phone_check').text('휴대폰번호를 확인해주세요 ');
					$('#phone_check').css('color', 'red'); 
				} 
			});

			$("#submit").on("click", function(){
				var inval_Arr = new Array(6).fill(false);
				
				//아이디 정규식, 중복 확인
				if (idJ.test($('#mem_id').val()) && idchecked) { 
					inval_Arr[0] = true;
				}
				else {
					inval_Arr[0] = false; 
					alert('아이디를 확인하세요.'); 
					return false;
				}
				// 비밀번호가 같은 경우 && 비밀번호 정규식
				if (($('#mem_pw').val() == ($('#mem_pw2').val())) && pwJ.test($('#mem_pw').val())) { 
					inval_Arr[1] = true; 
				}
				else { 
					inval_Arr[1] = false;
					alert('비밀번호를 확인하세요.');
					return false; 
				} 
				// 이름 정규식 
				if (nameJ.test($('#mem_name').val())) { 
					inval_Arr[2] = true; 
				} 
				else { 
					inval_Arr[2] = false;
					alert('이름을 확인하세요.'); 
					return false;
				} 
				// 이메일 정규식
				if (mailJ.test($('#mem_email').val())){
					console.log(phoneJ.test($('#mem_email').val()));
					inval_Arr[3] = true;
				}
				else { 
					inval_Arr[3] = false; 
					alert('이메일을 확인하세요.');
					return false; 
				} 
				// 휴대폰번호 정규식 
				if (phoneJ.test($('#mem_phonenum').val())) { 
					console.log(phoneJ.test($('#mem_phonenum').val()));
					inval_Arr[4] = true; 
				} 
				else {
					inval_Arr[4] = false; 
					alert('휴대폰 번호를 확인하세요.'); 
					return false;
				} 
				// 약관 체크 했는지
				if ($('#assignment').is(":checked")==true) { 
					console.log($('#assignment').is(":checked"));
					inval_Arr[5] = true; 
				} 
				else {
					inval_Arr[5] = false; 
					alert('약관에 동의해주세요.'); 
					return false;
				} 
								
				//전체 유효성 검사 
				var validAll = true; 
				for(var i = 0; i < inval_Arr.length; i++){
					if(inval_Arr[i] == false){
						validAll = false;
					} 
				} 
				if(validAll == true){
					// 유효성 모두 통과 
					alert('런치박스 가족이 되어주셔 감사합니다.'); 
				} 
				else{ 
					alert('정보를 다시 확인하세요.') 
				}

			});			
		})
	</script>
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
							<a href="/"><img src="../resources/img/Logo.png" alt="" width="120" height="40"></a>
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
						<form name='homeForm' action="/member/register" method="post">
							<div class="title">
								<a class="title_p">회원가입</a>
	                        </div>
							<hr class="one">
							<div class="content-box">
								<div>
									<div class="member_id">
										<label for="mem_id">아이디</label>
									</div>
									<div class="member_id_input">
										<input type="text" class="member_id_input" name="mem_id" id="mem_id">
									</div>
								</div>
								<div class="eheck_font" id="id_check"></div>                    
								<div>
									<div class="member_pw">
										<label for="mem_pw">비밀번호</label>
									</div>
									<div class="member_pw_input">
										<input type="password" class="member_pw_input" name="mem_pw" id="mem_pw">
									</div>
								</div>
								<div class="eheck_font" id="pw_check"></div> 
								<div>
									<div class="member_pw">
										<label for="mem_pw2">비밀번호 확인</label>
									</div>
									<div class="member_pw_input">
										<input type="password" class="member_pw_input" name="mem_pw2" id="mem_pw2">
									</div>
								</div>
								<div class="eheck_font" id="pw2_check"></div>
								<div>
									<div class="member_name">
										<label for="mem_name">이름</label>
									</div>
									<div class="member_name_input">
										<input type="text" class="member_name_input" name="mem_name" id="mem_name">
									</div>
								</div>
								<div class="eheck_font" id="name_check"></div>
								<div>
									<div class="member_email">
										<label for="mem_email">이메일</label>
									</div>
									<div class="member_email_input">
										<input type="text" class="member_email_input" name="mem_email" id="mem_email">
									</div>
								</div>
								<div class="eheck_font" id="email_check"></div>
								<div>
									<div class="member_phonenum">
										<label for="mem_phonenum">핸드폰 번호('-' 없이)</label>
									</div>
									<div class="member_phonenum_input">
										<input type="text" class="member_phonenum_input" name="mem_phonenum" id="mem_phonenum">
									</div>
								</div>
								<div class="eheck_font" id="phone_check"></div>		
							</div>
							<!-- end content box-->
							<hr class="one">
							<div class="foot-box">
								<div class="assignment">
									<div class="assigment_checkbox">
										<label><input type="checkbox" name="assignment" value="accept" id="assignment">약관에 동의합니다</label>
									</div>
									<a href="#pop1" class="asi_reading">약관읽기</a>								
								</div>
								<div>
									<button type="submit" class="login_submit_button" id="submit">가입하기</button>
								</div>
							</div>
							<!--end foot box-->	
						</form>					
					</div>
					<!--end login box-->														
				</div>				
				<!--end login back-->	
			</div>
			<!--end contain-->			
		</div>
		<div class="popup" id="pop1">
			<div class="Xbox">
				<a href="javascript:history.back();"><i class="fas fa-times"></i></a>
			</div>
			<hr class="one">
			<p>1.탕수육은 찍먹이 국룰이다</p>
			<p>2.베스킨라빈스에서 파인트를 시키면 민트초코,애플민트,쿠키민트를 시킨다</p>
			<p>3.햄은 런천미트가 최고다</p>
			<p>4.번은 개인주의야</p>
			<p>5.샤브샤브&마라탕 핵노맛</p>
		</div>	
		<!--end login makeuser page-->				
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
							<li><a href="/profile.html">마이페이지</a></li>
							<li><a href="/seeyousoon">커뮤니티</a></li>
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
    <script src="../resources/js/common_scripts.min.js"></script>
    <script src="../resources/js/main.js"></script>
		
</body>
</html>