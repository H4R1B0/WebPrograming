<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>	
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Ansonika">
    <title>런치박스</title>
    
	<%    
	    String boardwno = request.getParameter("boardwno");
	%>
	 
	<c:set var="boardwno" value="<%=boardwno%>"/> <!-- 게시글 번호 -->

	 
	 
	<!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&display=swap" rel="stylesheet">

    <!-- BASE CSS -->
	<link href="/resources/css/bootstrap.custom.min.css" rel="stylesheet">
	<link href="/resources/css/style.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="/resources/css/custom.css" rel="stylesheet">
    <link href="/resources/css/board.css" rel="stylesheet">
    
	<!-- 공통 CSS -->
	<link rel="stylesheet" type="text/css" href="/resources/css/boardcommon.css"/>
	 
	<!-- 공통 JavaScript -->
	<script type="text/javascript" src="/resources/js/boardjquery.js"></script>
	<script type="text/javascript">
	    
	    $(document).ready(function(){        
	        getBoardDetail(); 
	        
	    });
	    function setViewButton(){
	    	var curmem = "${member.mem_id}";
	    	var boardwriter = $("#mem_id").val();
	    	if(curmem == boardwriter){
	    		console.log("같음");      
	    		<c:set var="viewButton" value="true"/>
	    	}else{
	    		console.log("다름");
	    		<c:set var="viewButton" value="false"/>
	    	}
	    	console.log(<c:out value="${viewButton}" />);
	    }
	    /* 날짜 변형 함수 */
	    function formatDate(date) {
		  return date.getFullYear() + '년 ' + 
		    (date.getMonth() + 1) + '월 ' + 
		    date.getDate() + '일 ' + 
		    date.getHours() + '시 ' + 
		    date.getMinutes() + '분';
		}
	    
	    /** 게시판 - 목록 페이지 이동 */
	    function goBoardList(){                
	        location.href = "/board/boardList";
	    }
	    /** 게시판 - 수정 페이지 이동 */
	    function goBoardUpdate(){
	    	var curmem = "${member.mem_id}";
	    	var boardwriter = $("#mem_id").val();  	    	
	    	if(curmem == boardwriter){
	    		console.log("같음");
	    		var boardwno = $("#wno").val();	        
		        location.href = "/board/boardUpdate?boardwno="+ boardwno;
	    	}else{
	    		console.log("다름");
	    		alert("수정할 권한이 없습니다.");
	    		location.href = "/board/boardList";
	    	}
	    	
	        
	    }
	    
	    /** 게시판 - 상세 조회  */
	    function getBoardDetail(boardwno){
	        var boardwno = $("#wno").val();
	 
	        if(boardwno != ""){
	            
	            $.ajax({    	                
	                url        : "/board/getBoardDetail",
	                data    : $("#boardForm").serialize(),
	                dataType: "JSON",
	                cache   : false,
	                async   : true,
	                type    : "POST",    
	                success : function(obj) {
	                    getBoardDetailCallback(obj);                
	                },           
	                error	: function(xhr, status, error) {}
	                
	             });
	        } else {
	            alert("오류가 발생했습니다.\n관리자에게 문의하세요.");
	        }            
	    }
	    
	    /** 게시판 - 상세 조회  콜백 함수 */
	    function getBoardDetailCallback(obj){
	        
	        var str = "";
	        
	        if(obj != null){                                
	                            
	            var boardwno        = obj.wno;
	            var boardtitle		= obj.title;
	            var boardcontent	= obj.content;
	            var boardwriter     = obj.mem_id;
	            var boardwdate		= formatDate(new Date(obj.wdate-540 * 60 * 1000));
	            var boardhit		= obj.hit;            
	                    
	            str += "<tr>";
	            str += "<th>제목</th>";
	            str += "<td>"+ boardtitle +"</td>";
	            str += "<th>조회수</th>";
	            str += "<td>"+ boardhit +"</td>";
	            str += "</tr>";        
	            str += "<tr>";
	            str += "<th>작성자</th>";
	            str += "<td>"+ boardwriter +"</td>";
	            str += "<th>작성일시</th>";
	            str += "<td>"+ boardwdate +"</td>";
	            str += "</tr>";        
	            str += "<tr>";
	            str += "<th>내용</th>";
	            str += "<td colspan='3'>"+ boardcontent +"</td>";
	            str += "</tr>";
	            str +="<input type=hidden id=mem_id name=mem_id value="+boardwriter+"> <!-- 게시글 작성자-->";
	        } else {
	            
	            alert("등록된 글이 존재하지 않습니다.");
	            return;
	        }
	        $("#tbody").html(str);
	        setViewButton();
	    }
	    
	    /** 게시판 - 삭제  */
	    function deleteBoard(){
	    	var curmem = "${member.mem_id}";
	    	var boardwriter = $("#mem_id").val();
	    	//console.log(curmem);
	    	//console.log(boardwriter);
	    	//console.log(document.writeln(curmem == boardwriter));   	    	
	    	if(curmem !== boardwriter){
	    		console.log("다름");
	    		alert("삭제할 권한이 없습니다.");
	    		location.href = "/board/boardList";
	    	}
	    	else{
	    		var boardwno = $("#wno").val();
		        
		        var yn = confirm("게시글을 삭제하시겠습니까?");        
		        if(yn){
		            
		            $.ajax({    
		                
		                url        : "/board/deleteBoard",
		                data    : $("#boardForm").serialize(),
		                dataType: "JSON",
		                cache   : false,
		                async   : true,
		                type    : "POST",    
		                success : function(obj) {
		                    deleteBoardCallback(obj);                
		                },           
		                error     : function(xhr, status, error) {}
		                
		             });
		        } 
	    	}
	               
	    }
	    
	    /** 게시판 - 삭제 콜백 함수 */
	    function deleteBoardCallback(obj){
	    
	        if(obj != null){        
	            
	            var result = obj.result;
	            
	            if(result == "SUCCESS"){                
	                alert("게시글 삭제를 성공하였습니다.");                
	                goBoardList();                
	            } else {                
	                alert("게시글 삭제를 실패하였습니다.");    
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
								<li><a href="/cart.html">장바구니</a></li>
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
	<main class="boardDetail-main">
		<div class="boardDetail-page">
			<div class="contain">
		        <div class="table_box">
		            <h2>게시글 상세</h2>
		            <form id="boardForm" name="boardForm">        
		                <table width="100%" class="table01">
		                    <colgroup>
		                        <col width="15%">
		                        <col width="35%">
		                        <col width="15%">
		                        <col width="*">
		                    </colgroup>
		                    <tbody id="tbody">
		                       
		                    </tbody>
		                </table>        
		                <input type="hidden" id="wno"        name="wno"    value="${boardwno}"/> <!-- 게시글 번호 -->
		                <input type="hidden" id="search_type"    name="search_type"     value="S"/> <!-- 조회 타입 - 상세(S)/수정(U) -->
                	<div class="btn_right mt15">
		                <button type="button" class="btn black mr5" onclick="javascript:goBoardList();">목록으로</button>
	    				<button type="button" class="btn black mr5" onclick="javascript:goBoardUpdate();">수정하기</button>
						<button type="button" class="btn black" onclick="javascript:deleteBoard();">삭제하기</button>
						
		            </div>
		            </form>
		            
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
	<!--/footer-->
	</div>
	<!-- page -->
	
	<div id="toTop"></div><!-- Back to top button -->
	
	<!-- COMMON SCRIPTS -->
    <script src="/resources/js/common_scripts.min.js"></script>
    <script src="/resources/js/main.js"></script>
		
</body>
</html>