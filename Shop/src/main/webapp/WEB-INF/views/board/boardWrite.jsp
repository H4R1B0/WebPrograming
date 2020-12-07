<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>런치박스</title>
	 
	<!-- GOOGLE WEB FONT -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&display=swap" rel="stylesheet">
	
	<!-- BASE CSS -->
	<link href="../resources/css/bootstrap.custom.min.css" rel="stylesheet">
	<link href="../resources/css/style.css" rel="stylesheet">
	
	<!-- YOUR CUSTOM CSS -->
	<link href="../resources/css/custom.css" rel="stylesheet">
	<link href="../resources/css/board.css" rel="stylesheet">
	    
	<!-- 공통 CSS -->
	<link rel="stylesheet" type="text/css" href="../resources/css/boardcommon.css"/>
	 
	<!-- 공통 JavaScript -->
	<script type="text/javascript" src="../resources/js/boardjquery.js"></script>
	<script type="text/javascript">
	    
	    $(document).ready(function(){       
	    });
	        
	    /** 게시판 - 목록 페이지 이동 */
	    function goBoardList(){                
	        location.href = "/board/boardList";
	    }
	    
	    /** 게시판 - 작성  */
	    function insertBoard(){	 	    	
	    	var boardtitle = $("#title").val();
	        var boardcontent = $("#content").val();	   
	        
	        if (boardtitle == ""){            
	            alert("제목을 입력해주세요.");
	            $("#title").focus();
	            return;
	        }	        
	        if (boardcontent == ""){            
	            alert("내용을 입력해주세요.");
	            $("#content").focus();
	            return;
	        }	        
	        var yn = confirm("게시글을 등록하시겠습니까?");        
	        if(yn){	                
	            $.ajax({    	                
	                url        : "/board/insertBoard",
	                data    : $("#boardForm").serialize(),
	                dataType: "JSON",
	                cache   : false,
	                async   : true,
	                type    : "POST",    
	                success : function(obj) {
	                    insertBoardCallback(obj);                
	                },           
	                error     : function(xhr, status, error) {}
	                
	            });
	        }
	    }	    
	    /** 게시판 - 작성 콜백 함수 */
	    function insertBoardCallback(obj){	    
	        if(obj != null){        	            
	            var result = obj.result;	            
	            if(result == "SUCCESS"){                
	                alert("게시글 등록을 성공하였습니다.");                
	                goBoardList();                 
	            } else {                
	                alert("게시글 등록을 실패하였습니다.");    
	                return;
	            }
	        }
	    }
	    
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
										<li><a href="/board/boardList">런치박스 후기</a></li>
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

		<div class="main_nav inner">
			
			<div class="search_mob_wp">
				<input type="text" class="form-control" placeholder="Search over 10.000 products">
				<input type="submit" class="btn_1 full-width" value="Search">
			</div>
			<!-- /search_mobile -->
		</div>
		<!-- /main_nav -->
	</header>
	<main class="boardWrite-main">
		<div class="boardWrite-page">
			<div class="contain">
		        <div class="inner">        
		            <h2>게시글 작성</h2>
		            <form id="boardForm" name="boardForm">
		            	<input type="hidden" value="${member.mem_id}" id="mem_id" class="mem_id" name="mem_id">
		                <table width="100%" class="table02">
		                <caption><strong><span class="t_red">*</span> 표시는 필수입력 항목입니다.</strong></caption>
		                    <colgroup>
		                        <col width="20%">
		                        <col width="*">
		                    </colgroup>
		                    <tbody id="tbody">
		                        <tr>
		                            <th>제목<span class="t_red">*</span></th>
		                            <td><input id="title" name="title" value="" class="tbox01"/></td>
		                        </tr>
		                        <!-- 
		                        <tr>
		                            <th>작성자<span class="t_red">*</span></th>
		                            <td><input id="mem_id" name="mem_id" value="" class="tbox01"/></td>
		                        </tr>
		                        -->
		                        <tr>
		                            <th>내용<span class="t_red">*</span></th>
		                            <td><textarea id="content" name="content" cols="10" rows="5" class="textarea01"></textarea></td>
		                        </tr>		                        
		                    </tbody>
		                </table>
		            </form>
		            <div class="btn_right mt15">
		                <button type="button" class="btn black mr5" onclick="javascript:goBoardList();">목록으로</button>
		                <button type="button" class="btn black" onclick="javascript:insertBoard();">등록하기</button>
		            </div>
		        </div>
    		</div>
		</div>
	</main>
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
							<li><a href="/boardList">런치박스 후기</a></li>
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
</div>
</body>
</html>