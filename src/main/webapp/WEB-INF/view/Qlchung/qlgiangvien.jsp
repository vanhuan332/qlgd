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
										<label class="col-md-4">Mã giảng viên</label>
										<div class="col-md-8">
											<input id="manc" type="text" class="form-control"
												placeholder="Mã giảng viên">
										</div>
									</div>
									<!-- /.form-group -->
								</div>
								<!-- /.col -->
								<div class="col-md-4">
									<div class="form-group col-md-12">
										<label class="col-md-4">Tên giảng viên</label>
										<div class="col-md-8">
											<input id="tennc" type="text" class="form-control"
												placeholder="Tên giảng viên">
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
							<h3 class="box-title">Danh sách giảng viên</h3>
							<a class="btn btn-primary pull-right" data-toggle="modal"
								data-target="#myModalThem">Thêm</a>
						</div>
						<div class="col-md-12">
							<table id="example2" class="table table-hover">
								<thead>
									<tr>
										<td>Mã giảng viên</td>
										<td>Tên giảng viên</td>
										<td>Chức danh</td>
										<td>Chức vụ</td>
										<td>Phòng ban</td>
										<td>Hành động</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>GV001</td>
										<td><a data-toggle="modal" data-target="#myModalThem">Trần
												Văn Cường</a></td>
										<td>Giáo sư</td>
										<td>Trưởng khoa</td>
										<td>Công nghệ thông tin</td>
										<td><a class="btn btn-success" data-toggle="modal"
											data-target="#myModalThem">Sửa</a> &nbsp; <a
											class="btn btn-danger" data-toggle="modal"
											data-target="#myModalXoa">Xóa</a></td>
									</tr>
									<tr>
										<td>GV002</td>
										<td><a data-toggle="modal" data-target="#myModalThem">Nguyễn
												Thị Hồng</a></td>
										<td>Tiến sĩ</td>
										<td>Giảng viên</td>
										<td>Công nghệ thông tin</td>
										<td><a class="btn btn-success" data-toggle="modal"
											data-target="#myModalThem">Sửa</a> &nbsp; <a
											class="btn btn-danger" data-toggle="modal"
											data-target="#myModalXoa">Xóa</a></td>
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
						<h4 class="modal-title">Thêm giảng viên</h4>
					</div>
					<div class="modal-body">
						<div class="col-md-12 form-group">
							<label class="col-md-4 ">Mã giảng viên <span>*</span></label>
							<div class="col-md-8">
								<input id="mamonhoc" type="text" class="form-control">
							</div>
							<!-- 										<input type="text" id="level" hidden="hidden"> -->

						</div>
						<div class="col-md-12 form-group">
							<label class="col-md-4 ">Tên giảng viên <span>*</span></label>
							<div class="col-md-8">
								<input id="tenmonhoc" type="text" class="form-control">
							</div>
						</div>
						<div class="col-md-12 form-group">
							<label class="col-md-4 ">Chức danh </label>
							<div class="col-md-8">
								<select id="chucdanh" class="form-control select2"
									style="width: 100%;">
									<option value="tuluan">Giáo sư</option>
									<option value="tracnghiem">Tiến sĩ</option>
									<option value="thuchanh">Thạc sĩ</option>
								</select>
							</div>
						</div>
						<div class="col-md-12 form-group">
							<label class="col-md-4 ">Chức vụ </label>
							<div class="col-md-8">
								<select id="chucvu" class="form-control select2"
									style="width: 100%;">
									<option value="tuluan">Trưởng khoa</option>
									<option value="tracnghiem">Phó khoa</option>
									<option value="thuchanh">Giảng viên</option>
								</select>
							</div>
						</div>
						<div class="col-md-12 form-group">
							<label class="col-md-4 ">Phòng ban</label>
							<div class="col-md-8">
								<select id="phòng ban" class="form-control select2"
									style="width: 100%;">
									<option value="tuluan">Công nghệ thông tin</option>
									<option value="tracnghiem">Xây dựng dân dụng</option>
									<option value="thuchanh">Quản lý nhân lực</option>
								</select>
							</div>
						</div>
						<div class="col-md-12 form-group">
							<label class="col-md-4 ">Ngày sinh</label>
							<div class="col-md-8">
								<input type="date" value="" class="form-control" />
							</div>
						</div>
						<div class="col-md-12 form-group">
							<label class="col-md-4 ">Giới tính</label>
							<div class="col-md-8">
								<select id="gioitinh" class="form-control select2"
									style="width: 100%;">
									<option value="tuluan">......</option>
									<option value="tracnghiem">Nam</option>
									<option value="thuchanh">Nữ</option>
								</select>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default " id="okModalThem"
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
		$("#example2").dataTable({
			"searching" : false
		});

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
