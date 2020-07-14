<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/layout.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/movie/movieList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/event/eventList.css" rel="stylesheet" type="text/css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<div class="root">
	<!-- 헤더 -------------------------------------------------------------------------------------->
	<c:import url="../template/header.jsp"></c:import>
	
	<!-- 컨테이너 -------------------------------------------------------------------------------------->
	<input type="hidden" id="_csrf" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<div class="container">
		<div class="c_nav">
			<div class="nav_linemap">
				<ul>
					<li>
						<a href="../">
							<img alt="go to Home" src="../images/login/btn_home.png">					
						</a>
					</li>
					<li>
						<a href="./movieList">영화</a>
					</li>
					<li>
						<a href="./movieList">무비차트</a>
					</li>
					<li class="last">
						무비차트
					</li>
				</ul>
			</div>
		</div>
		
		<div class="contents">
			<div class="movie-chart">
<!-- 			헤더 제목부분+ 차트종류(서브) -->
				<div class="sect-movie-title">
					<h3>무비 차트</h3>
					<div class="submenu">
						<ul>
							<li class="on"><a href="">무비 차트</a></li>
							<li><a href="">상영예정작</a></li>
						</ul>
					</div>
				</div>
				<div class="evt-nav-area">
					<ul class="evt-tab-manu">
						<li>
							<a href="#" title="" class="on">SPECIAL</a>
						</li>
						<li>
							<a href="#" title="" class="">영화/예매</a>
						</li>
						<li>
							<a href="#" title="" class="">멤버십/CLUB</a>
						</li>
						<li>
							<a href="#" title="" class="">CGV 극장별</a>
						</li>
						<li>
							<a href="#" title="" class="">제휴/할인</a>
						</li>
					</ul>
					<div class="submenu">
						<a href="" class="round red on"><i>당첨자 발표</i></a>
						<a href="" class="round red on"><i>종료된 이벤트</i></a>
					</div>
				</div>
				<div class="evt-select-area"></div>
				<div class="cols-content" style=" display: flex;">
					<div class="cols-detail event">
						<div class="sect-evt-item-list">
							<ul class="cf">
								<c:forEach items="${list}" var="vo" varStatus="i">
									<li>
										<a id="tile_${i}" href="">
											<div class="evt-thumb">
												<img alt="" src="">
											</div>
											<div class="evt-desc">
												<p class="txt1">${vo.title}</p>
												<p class="txt2">
													"${vo.startDate}~${vo.endDate}"
													<span> . </span>
													<em>D-5</em>
												</p>
											</div>
										</a>
								</li>
								</c:forEach>
							</ul>
						</div>
						<button type="button" class="btn-item-more" id="btnMoreData"><strong>더보기</strong></button>
					</div>
					<div class="cols-aside">
						<div class="col-aside">
							<div class="ad-evnet">
								<div class="ad-partner01">
									<div src="" width="160" height="300" frameborder="0" scrolling="no" margingeight="0" name="M_Rectangle" id="M_Rectangle">
										<a href=""><img src="" width="160" height="300" alt="파리의 인어" border="0"></a>
									</div>	
								</div>
								<div class="ad-partner01">
									<div src="" width="160" height="300" frameborder="0" scrolling="no" margingeight="0" name="M_Rectangle" id="M_Rectangle">
										<a href=""><img src="" width="160" height="300" alt="파리의 인어" border="0"></a>
									</div>	
								</div>
								<div class="ad-partner02">
									<div src="" width="160" height="35" frameborder="0" scrolling="no" margingeight="0" name="M_Rectangle" id="M_Rectangle">
										<a href=""><img src="" width="160" height="35" alt="파리의 인어" border="0"></a>
									</div>	
								</div>
							</div>
						</div>
					</div>
				</div>

			
			</div><!-- 끝 chart -->
			
		</div>
	</div>
	
	
	<!-- 푸터 -------------------------------------------------------------------------------------->
	<c:import url="../template/footer.jsp"></c:import>
	
	<!-- 사이드바 ---------------------------------------------------------------------------------------------->
	<c:import url="../template/sidebar.jsp"></c:import>
</div>


<script type="text/javascript" src="../js/movie/movieList.js"></script>

	


</body>
</html>
















