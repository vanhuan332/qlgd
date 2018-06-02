<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Trang đăng nhập</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 -->
 <link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css">
 <link rel="stylesheet" href="static/css/AdminLTE.min.css">

<!-- Google Font -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic"> -->
<style>
body { 
    background: lightblue url("static/img/credit/anh.png") no-repeat fixed center; 
}
</style>
</head>
<body">
	<div class="container" style="margin-top: 280px;">
		<div class="col-sm-10"></div>
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<div class="box box-info">
				<div class="box-header with-border">
					<h3 class="box-title">Đăng nhập</h3>
				</div>
				<!-- /.box-header -->
				<!-- form start -->
				<form class="form-horizontal" id="login-form" method="post">
					<div class="box-body">
						<div class="form-group">
							<label for="username" class="col-sm-3 control-label">Tên
								đăng nhập</label>

							<div class="col-sm-9">
								<input type="text" class="form-control" id="username" name="username"
									placeholder="Tên đăng nhập">
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">Mật
								khẩu</label>

							<div class="col-sm-9">
								<input type="password" class="form-control" id="password" name="password"
									placeholder="Mật khẩu">
							</div>
						</div>
						<label class="col-sm-3"></label><label class="col-sm-9" id="err-ms" style="color: red"></label>
					</div>
					<div class="box-footer">
					<button type="button" onclick="doLogin()" id="btn-login" class="btn btn-info pull-right">Đăng nhập</button>
				</div>
					<div id = "err"></div>
				</form>
				<!-- /.box-body -->
			</div>
		</div>
		<div class="col-md-3"></div>
	</div>
	<!-- jQuery 3 -->
	<script src="static/jquery/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="static/bootstrap/js/bootstrap.min.js"></script>
	<script src="static/js/indexjs.js"></script>
	
	<script type="text/javascript">
	var urlApi= "http://localhost:8082/api";
	function doLogin(){
		var dataa = {
				"username": ($("#username").val().trim() != "" ) ? $("#username").val().trim() : "",
				"password":($("#password").val().trim() != "" ) ? $("#password").val().trim() : ""
			};
		ajaxGet("/rest/login",JSON.stringify(dataa),successHandler,errorHandler);
	}
	function ajaxGet(url,data,successHandler,errorHandler) {
		$.ajax({
			headers:{
				'Content-Type':'application/json'
			},
			type : 'post',
			//dataType : 'json',
			url : urlApi+url,
			data : data,
			success : successHandler,
			error : errorHandler,
		});
	}
	function successHandler(data,xhr){
		localStorage.setItem("access-token", data);
		localStorage.setItem("username", $("#username").val().trim() );
		location.href="/home";
	}
	function errorHandler(data){
		$("#err").html("<span style='color:red'>"+data.responseText+"<span>");
	}
	enterForm("#login-form","#btn-login")
	
	</script>
	
</body>
</html>
