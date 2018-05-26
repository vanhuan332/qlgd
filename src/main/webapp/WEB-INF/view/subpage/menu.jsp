<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="main-header">
	<%
		String localUrl = request.getContextPath();
	%>
	<!-- Logo -->
	<a href="<%=localUrl%>/home" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
		<span class="logo-mini"><b>QLGD</b></span> <!-- logo for regular state and mobile devices -->
		<span class="logo-lg"><b>Quản Lý Giảng Dạy</b></span>
	</a>
	<!-- Header Navbar: style can be found in header.less -->
	<nav class="navbar navbar-static-top">
		<!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="push-menu"
			role="button"> <span class="sr-only">Toggle navigation</span>
		</a>
	</nav>
</div>
<!-- Left side column. contains the logo and sidebar -->
<div class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel" style="height: 60px">
			<!-- <div class="pull-left image" style="height: 30px;">
			</div> -->
			<div class="info">
				<p>Nguyễn Văn An</p>
				<p>
					<a onclick="logout()" href="<%=localUrl%>/login"><i
						class="fa fa-sign-out"></i> Logout</a> &nbsp;
				</p>
			</div>
		</div>
		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu" data-widget="tree">
			<li class="header">Quản Lý Giảng Dạy</li>
			<li class="treeview"><a href="#"> <i class="fa fa-dashboard"></i>
					<span>Quản lý chung</span> <span class="pull-right-container">
						<i class="fa fa-angle-left pull-right"></i>
				</span></a>
				<ul class="treeview-menu">
					<li><a href="<%=localUrl%>/qlmonhoc"> <i
							class="fa fa-book"></i> Quản lý môn học </a></li>
					<li><a href="<%=localUrl%>/qlgiangvien"><i
							class="fa fa-user"></i> Quản lý giảng viên</a></li>
					<li><a href="<%=localUrl%>/qllophoc"><i
							class="fa fa-university"></i> Quản lý lớp học</a></li>
					<li><a href="<%=localUrl%>/qldethi"><i
							class="fa fa-address-book-o"></i> Quản lý đề thi</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-calendar"></i>
					<span>Quản lý năm học</span> <span class="pull-right-container">
						<i class="fa fa-angle-left pull-right"></i>
				</span></a>
				<ul class="treeview-menu">
					<li><a href="<%=localUrl%>/congViecChung"> <i
							class="fa fa-calendar-plus-o"></i> Quản lý năm </a></li>
					<li><a href="<%=localUrl%>/congViecDangXuLy"><i
							class="fa fa-calendar-minus-o"></i> Quản lý kì</a></li>
				</ul></li>
			<li><a href="<%=localUrl%>/qltracuu"><i class="fa fa-search"></i><span>Quản lý lịch dạy</span></a></li>
			<li class="treeview"><a href="#"> <i class="fa fa-hourglass"></i>
					<span>Thống kê khối lượng</span> <span class="pull-right-container">
						<i class="fa fa-angle-left pull-right"></i>
				</span></a>
				<ul class="treeview-menu">
					<li><a href="<%=localUrl%>/thongkegiogiang"> <i
							class="fa fa-hourglass-1"></i> Thống kê giờ giảng </a></li>
					<li><a href="<%=localUrl%>/thongkemiengiam"><i
							class="fa fa-hourglass-2"></i> Thống kê miễn giảm</a></li>
				</ul></li>
		</ul>
	</section>
</div>
<!-- jQuery 3 -->
<script src="static/jquery/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="static/bootstrap/js/bootstrap.min.js"></script>
<script src="static/js/indexjs.js"></script>
<script src="static/js/commonAjax.js"></script>
<script type="text/javascript" src="static/js/activemenu.js"></script>