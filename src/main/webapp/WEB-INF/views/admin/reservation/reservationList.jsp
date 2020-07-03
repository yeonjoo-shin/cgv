<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />


<title>관리자 페이지</title>

<link rel="stylesheet" href="/css/styles.css" />
<link rel="stylesheet" href="/css/admin/reservation/reservation.css" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- 로고 -->
		<a href="/admin"><img src="/images/header/h1_cgv.png"
			class="admin-logo" /></a>
		<!-- 검색 바-->
		<form
			class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
			<div class="input-group">
				<input class="form-control" type="text" placeholder="검색어를 입력"
					aria-label="Search" aria-describedby="basic-addon2" />
				<div class="input-group-append">
					<button class="btn btn-primary" type="button">
						<i class="fas fa-search"></i>
					</button>
				</div>
			</div>
		</form>
		<!-- 로그인-->
		<ul class="navbar-nav ml-auto ml-md-0">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="userDropdown" href="#"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="userDropdown">
					<a class="dropdown-item" href="/">메인 페이지로</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item"
						href="${pageContext.request.contextPath}/member/memberLogout">로그아웃</a>
				</div></li>
		</ul>
	</nav>

	<!-- 사이드바 -->
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">게시판</div>
						<a class="nav-link"
							href="${pageContext.request.contextPath}/admin/notice/noticeList">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> 공지사항
						</a>
						<div class="sb-sidenav-menu-heading">관리자 메뉴</div>
						<a class="nav-link"
							href="${pageContext.request.contextPath}/admin/member/memberList">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> 회원 관리
						</a> <a class="nav-link"
							href="${pageContext.request.contextPath}/admin/movie/movieList">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> 영화 관리
						</a> <a class="nav-link"
							href="${pageContext.request.contextPath}/admin/cinema/cinemaList">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> 극장 관리
						</a> <a class="nav-link"
							href="${pageContext.request.contextPath}/admin/reservation/reservationList">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> 예매 관리
						</a> <a class="nav-link" href="#">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> 리뷰 관리
						</a> <a class="nav-link"
							href="${pageContext.request.contextPath}/admin/notice/bannerManage">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> 배너 관리
						</a>
					</div>
				</div>
			</nav>
		</div>

		<!-- 내용 -->
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<h1>Reservation List</h1>

					<!-- 목록 -->
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr class="admin-tr">
									<th style="width: 60px;">No.</th>
									<th>영화제목</th>
									<th style="width: 100px;">상영시간</th>
									<th style="width: 100px;">가격</th>
									<th style="width: 80px;">타입</th>
									<th style="width: 100px;">영화관</th>
									<th style="width: 100px;">극장</th>
									<th style="width: 90px;">총 좌석</th>
									<th style="width: 130px;">수입</th>
									<th style="width: 80px;">일반</th>
									<th style="width: 80px;">청소년</th>
									<th style="width: 80px;">우대</th>
									<th style="width: 170px;">생성일</th>
									<th style="width: 50px;">삭제</th>
								</tr>
							</thead>
							<tfoot>
								<tr class="admin-tr">
									<th>No.</th>
									<th>영화제목</th>
									<th>상영시간</th>
									<th>가격</th>
									<th>타입</th>
									<th>영화관</th>
									<th>극장</th>
									<th>총 좌석</th>
									<th>수입</th>
									<th>일반</th>
									<th>청소년</th>
									<th>우대</th>
									<th>생성일</th>
									<th>삭제</th>
								</tr>
							</tfoot>
							<tbody>
								<c:forEach items="${list}" var="vo">
									<tr class="admin-tr-each">
										<td class="ate-center">${vo.num}</td>
										<td class=""><a href="#">${vo.movieNum}</a></td>
										<td class="ate-center">${vo.movieTimeNum}분</td>
										<td>${vo.paymentNum}</td>
										<td>${vo.filmType}</td>
										<td class="ate-center">${vo.cinemaName}</td>
										<td class="ate-center">${vo.theaterName}</td>
										<td class="ate-center">${vo.seats}개</td>
										<td>${vo.totalPrice}</td>
										<td>${vo.common}</td>
										<td>${vo.teenager}</td>
										<td>${vo.preference}</td>
										<td>${vo.createAt}</td>
										<td class="del-td">X</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>


						<!-- 페이저 -->
						<div class="pager">
							<ul class="pagination">
								<c:if test="${pager.curBlock>1}">
									<li><a href="#" class="custompager"
										title="${pager.startNum-1}">이전</a></li>
								</c:if>

								<c:forEach begin="${pager.startNum}" end="${pager.lastNum}"
									var="p">
									<li><a href="#" class="custompager" title="${p}">${p}</a></li>
								</c:forEach>

								<c:if test="${pager.curBlock<pager.totalBlock}">
									<li><a href="#" class="custompager"
										title="${pager.lastNum+1}">다음</a></li>
								</c:if>
							</ul>
						</div>

					</div>

				</div>
			</main>
		</div>
	</div>

	<!-- 스크립트 -->
	<script type="text/javascript">
		$(".del-td").click(function(){
			console.log("d")
			if(confirm("삭제하시겠습니까?")){
				alert("삭제되었습니다.");
			}
		});
	</script>
	<script src="js/scripts.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/datatables-demo.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>

</body>
</html>
