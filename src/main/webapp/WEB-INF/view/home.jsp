<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Quản Lý Giảng Dạy</title>

<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome icon menu-->
<link rel="stylesheet" href="static/css/font-awesome.min.css">
<!-- Theme style -->
<!-- giu khung menu doc -->
<link rel="stylesheet" href="static/css/AdminLTE.min.css">
<!-- dung de tạo màu menu doc -->
<link rel="stylesheet" href="static/css/_all-skins.min.css">
<!-- my css -->
<link rel="stylesheet" href="static/css/indexcss.css">
</head>

<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<div id="menu">
			<jsp:include page="subpage/menu.jsp" />
		</div>
		<!-- end menu -- >

  <!-- Contain  -->
		<div class="content-wrapper">
			<div class="row">
				<div class="box">
					<h1>Chào mừng bạn đến với trang chủ website </h1>
				</div>
			</div>
			<!-- end row -->
		</div>
		<!-- end Contain -->
	</div><!-- ./wrapper -->
	 
	<!-- jQuery 3 -->
	<script src="static/jquery/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="static/bootstrap/js/bootstrap.min.js"></script>
	<!-- responsive menu doc slide hide and show -->
	<script src="static/js/adminlte.min.js"></script>
	<script src="static/js/indexjs.js"></script>
	<script>
		if(localStorage.getItem("username") == "null"){
			location.href = '/login';
		}
	</script>
</body>
</html>
