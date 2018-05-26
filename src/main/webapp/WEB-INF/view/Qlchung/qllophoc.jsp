<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Quản Lý</title>

<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome icon menu-->
<link rel="stylesheet" href="static/css/font-awesome.min.css">
<!-- Theme style -->
<!-- giu khung menu doc -->
<link rel="stylesheet" href="static/css/AdminLTE.min.css">
<!-- dung de tạo màu menu doc -->
<link rel="stylesheet" href="static/css/_all-skins.min.css">
<!-- data table -->
<link rel="stylesheet" type="text/css"
	href="static/DataTables/css/dataTables.bootstrap.min.css">
<!-- my css -->
<link rel="stylesheet" type="text/css" href="static/css/indexcss.css">
<link rel="stylesheet" type="text/css" href="static/css/table.css">
<link rel="stylesheet" type="text/css" href="static/css/form.css">
<link rel="stylesheet" type="text/css" href="static/css/select2.min.css">
</head>

<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<div id="menu">
			<jsp:include page="../subpage/menu.jsp" />
		</div>
		<!-- end menu -- >

  <!-- Contain  -->
		<div class="content-wrapper">
			<div class="row">
				<div class="col-md-12">
					<!--  bat dau form tìm kiem -->
					<div class="box box-default">
						<div class="box-header with-border">
							<h3 class="box-title">Tiêu Chí Tìm Kiếm</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<div class="row">
								<div class="col-md-4">
									<div class="form-group col-md-12">
										<label class="col-md-4">Mã môn học</label>
										<div class="col-md-8">
											<input id="manc" type="text" class="form-control"
												placeholder="Mã môn học">
										</div>
									</div>
									<!-- /.form-group -->

									<!-- /.form-group -->
								</div>
								<!-- /.col -->
								<div class="col-md-4">
									<div class="form-group col-md-12">
										<label class="col-md-4">Tên môn học</label>
										<div class="col-md-8">
											<input id="tennc" type="text" class="form-control"
												placeholder="Tên môn học">
										</div>
									</div>
									<!-- /.form-group -->

								</div>
								<div class="col-md-4">
								<button id="filter" class="btn btn-primary">Tìm Kiếm</button>
								<button id="reset" class="btn btn-primary">Làm Lại</button>
							</div>
								<!-- /.col -->

								<!-- /.col -->
							</div>
							
							<!-- /.row -->
						</div>
						<!-- /.box-body -->
					</div>
					<!-- bat dau table -->
					<div class="col-md-12  box box-body">
						<div class="box-header with-border">
							<h3 class="box-title">Danh sách môn học</h3>
							<a class="btn btn-primary pull-right" data-toggle="modal" data-target="#myModalThem"
								>Thêm</a>
						</div>
						<div class="col-md-12">
							<table id="example2" class="table table-hover">
								<thead>
									<tr> 
										<td>Mã môn học</td>
										<td>Tên môn học</td>
										<td>Số tín chỉ</td>
										<td>Số tiết</td>
										<td>Hình thức thi</td>
										<td>Hành động</td>
									</tr>
								</thead>
								<tbody>
									<tr> 
										<td>MH001</td>
										<td><a data-toggle="modal" data-target="#myModalThem">Pháp luật đại cương</a></td>
										<td>2</td>
										<td>60</td>
										<td>TL, TH, TN</td>
										<td><a class="btn btn-success"  data-toggle="modal" data-target="#myModalThem">Sửa</a> &nbsp; 
										<a class="btn btn-danger" data-toggle="modal" data-target="#myModalXoa">Xóa</a> </td>
									</tr>
									<tr> 
										<td>MH002</td>
										<td><a data-toggle="modal" data-target="#myModalThem">Tư tưởng Hồ Chí Minh</a></td>
										<td>2</td>
										<td>60</td>
										<td>TL</td>
										<td><a class="btn btn-success" data-toggle="modal" data-target="#myModalThem">Sửa</a> &nbsp; 
										<a class="btn btn-danger" data-toggle="modal" data-target="#myModalXoa">Xóa</a> </td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<!-- end row -->
		</div>
		<!-- end Contain -->
		<div class="modal fade" id="myModalXoa" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close dongmodal" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Thông báo</h4>
					</div>
					<div class="modal-body">
						<h5>Bạn muốn xóa ?</h5>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default " id="okModalXoa"
							data-dismiss="modal">Đồng ý</button>
						<button type="button" class="btn dongmodal" data-dismiss="modal">Đóng</button>
					</div>
				</div>
			</div>
		</div>
		<!-- start modal -->
		<div class="modal fade" id="myModalThem" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close dongmodal" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Thêm môn học</h4>
					</div>
					<div class="modal-body">
						<div class="col-md-12 form-group">
								<label class="col-md-4 ">Mã môn học <span>*</span></label>
								<div class="col-md-8">
									<input id="mamonhoc" type="text" class="form-control">
								</div>
								<!-- 										<input type="text" id="level" hidden="hidden"> -->
								
							</div>
							<div class="col-md-12 form-group">
							<label class="col-md-4 ">Tên môn học </label>
								<div class="col-md-8">
									<input id="tenmonhoc" type="text" class="form-control">
								</div>
							</div>
							<div class="col-md-12 form-group">
							<label class="col-md-4 ">Số tín chỉ </label>
								<div class="col-md-8">
									<input id="tenmonhoc" type="number" class="form-control">
								</div>
							</div>
							<div class="col-md-12 form-group">
							<label class="col-md-4 ">Số tiết </label>
								<div class="col-md-8">
									<input id="tenmonhoc" type="number" class="form-control">
								</div>
							</div>
							<div class="col-md-12 form-group">
								<label class="col-md-4 ">Hình thức thi</label>
								<div class="col-md-8">
									<select id="loaihinh" multiple="multiple" class="form-control select2" style="width: 100%;">
										<option value="tuluan">Tự luận</option>
										<option value="tracnghiem">Trắc nghiệm</option>
										<option value="thuchanh">Thực hành</option>
									</select>
								</div>
							</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default " id="okModalXoa"
							data-dismiss="modal">Đồng ý</button>
						<button type="button" class="btn dongmodal" data-dismiss="modal">Đóng</button>
					</div>
				</div>
			</div>
		</div>
		<!-- endmodal -->
		<!-- start modal -->
		<div class="modal fade" id="notifiModal" role="dialog">
			<div class="modal-dialog">
					<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close dongmodal" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Thông báo</h4>
					</div>
					<div class="modal-body">
						<p id="massagemodal"></p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn dongmodal" data-dismiss="modal">Đóng</button>
					</div>
				</div>
			</div>
		</div>
		<!-- endmodal -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery 3 -->
	<script src="static/jquery/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="static/bootstrap/js/bootstrap.min.js"></script>
	<!-- responsive menu doc slide hide and show -->
	<script src="static/js/adminlte.min.js"></script>
	<script type="text/javascript" src="static/js/activemenu.js"></script>
	<script type="text/javascript"
		src="static/DataTables/js/jquery.dataTables.min.js"></script>
	<script src="static/js/datatable.js"></script>
	<script type="text/javascript"
		src="static/DataTables/js/dataTables.bootstrap.min.js"></script>
	<script src="static/js/indexjs.js"></script>
	<script src="static/jsTree/jstree.min.js"></script>
	<script src="static/js/builtTree.js"></script>
	<script src="static/js/select2.full.min.js"></script>
	<script>
	$('.modal-title').html("Thêm môn học");
	$('.select2').select2();
	$("#example2").dataTable({"searching":false});
	
	$('#okModalXoa').on('click', function() {
			CommonAjax.post({
				"orgCode" : deleteOrgCode.trim()
			}, "/orgChart/delete", deleteOrgChartSuccess, deleteOrgChartError);
		});

		//success delete
		function deleteOrgChartSuccess(data) {
			$("#notifiModal .modal-header").removeClass("btn-danger");
			$("#notifiModal .modal-header").addClass("btn-success");
			$('#massagemodal').html(data.message);
			$('#notifiModal').modal('toggle');
			$("#notifiModal").css({
				"display" : "block"
			});
			$('#notifiModal').on('hidden.bs.modal', function(e) {
				location.reload();
			});
		}
		//error delete
		function deleteOrgChartError(data) {
			$("#notifiModal .modal-header").removeClass("btn-success");
			$("#notifiModal .modal-header").addClass("btn-danger");
			$('#massagemodal').html(data.responseJSON.message);
			$('#notifiModal').modal('show');
			$("#notifiModal").css({
				"display" : "block"
			});
		}
		// endXoa
	</script>
</body>
</html>
