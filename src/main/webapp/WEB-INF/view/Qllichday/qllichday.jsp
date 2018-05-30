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
										<label class="col-md-4">Giảng viên</label>
										<div class="col-md-8">
											<select id="giangvien" class="form-control select2">
												<option value="">Chọn Giảng viên</option>
											</select>
										</div>
									</div>
								</div>
							</div>



							<!-- /.box-body -->
						</div>
						<!-- bat dau table -->
						<div class="col-md-12  box box-body">
							<div class="box-header with-border">
								<h3 class="box-title">Danh sách giảng dạy</h3>
								<a class="btn btn-primary pull-right" data-toggle="modal" id="themBtn" onclick="them();">Thêm</a>
							</div>
							<div class="col-md-12">
								<table id="example2" class="table table-hover">
									<thead>
										<tr>
											<td>Tên môn học</td>
											<td>Số lượng</td>
											<td>Nội dung thực hiện</td>
										</tr>
									</thead>
									<tbody>

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
							<button type="button" class="close dongmodal"
								data-dismiss="modal">&times;</button>
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
					<form id="themForm">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close dongmodal"
									data-dismiss="modal">&times;</button>
								<h4 class="modal-title">Thêm Giảng Dạy</h4>
							</div>
							<div class="modal-body">

								<div class="col-md-12 form-group">
									<label class="col-md-4 ">Môn học</label>
									<div class="col-md-8">
										<select id="monhoc" name="monhoc" class="form-control select2"
											style="width: 100%;">
										</select>
									</div>
								</div>
								<div class="col-md-12 form-group">
									<label class="col-md-4 ">Hành động</label>
									<div class="col-md-8">
										<select id="hanhdong" name="hanhdong"
											class="form-control select2" style="width: 100%;">
										</select>
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<input class="btn btn-primary" type="submit" value="Lưu" id="save" >
								<button type="button" class="btn dongmodal" data-dismiss="modal">Đóng</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<!-- endmodal -->
			<!-- start modal -->
			<div class="modal fade" id="notifiModal" role="dialog">
				<div class="modal-dialog">
					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close dongmodal"
								data-dismiss="modal">&times;</button>
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
		<script src="static/js/select2.full.min.js"></script>
		<script src="static/js/jquery.validate.min.js"></script>
		<script>
			$('.select2').select2();
			
			CommonAjax.get("/giangvien/list-giangvien",null,getCDSuccess,null);
			function getCDSuccess(data){
				data.forEach(ele => {
					$("#giangvien").append('<option value='+ele.idGiangVien+'>'+ele.fullName+'</option>')
				})
			}
			
			$('#giangvien').on('select2:select', function (e) {
				var idGv = $('#giangvien').val();
				CommonAjax.get("/giangvien/thongke/"+idGv,null,getTkSuccess,null);
			});
			function getTkSuccess(data){
				$('#example2').dataTable().fnDestroy();
				$("#example2 tbody").html("");
				var idgv = $('#giangvien').val();
				data.forEach(e => {
					var tr = $('<tr/>');
						var td =$('<td/>');
						tr.append($('<td/>').html(e.tenHocPhan));
						tr.append($('<td/>').html(e.soLuong));
						tr.append($('<td/>').html(e.noiDungThucHien));
					$("#example2 tbody").append(tr);
				})
				$("#example2").dataTable({"searching":false});
			}
			
			CommonAjax.get("/monhoc/list-monhoc",null,getMHSuccess,null);
			function getMHSuccess(dataad){
				dataad.forEach(el => {
					$("#monhoc").append('<option value='+el.idMonHoc+'>'+el.tenMonHoc+'</option>')
				})
			}
			CommonAjax.get("/hanhdong/list-hanhdong",null,getHDSuccess,null);
			function getHDSuccess(data){
				data.forEach(ele => {
					$("#hanhdong").append('<option value='+ele.idHanhDong+'>'+ele.tenHanhDong+'</option>')
				})
			}
			
			var formValidator = $("#themForm").validate({
				rules : {
					monhoc: {
						required:true,
						max:100,
					},
					hanhdong: {
						required:true,
					}
				},
				messages : {
					monhoc: {
						required: "Vui lòng chọn môn học"
					},
					hanhdong: {
						required: "Vui lòng chọn hành động"
					}
				}		
			});	
			
			function them(){
				var idGv = $('#giangvien').val();
				if (idGv != "" || idGv != null){
					$("#myModalThem .modal-title").html("Thêm Giảng Dạy");
					$("#myModalThem").modal("toggle");
				}
				$("#monhoc").val("").trigger("change");
				$("#hanhdong").val("").trigger("change");
				formValidator.settings.submitHandler = addHandler;
			}
			
			function addHandler(){
				var dataa = {
						"idGiangVien": ($("#giangvien").val().trim() != "" ) ? parseFloat($("#giangvien").val().trim()) : null,
						"idHanhDong":($("#hanhdong").val().trim() != "" ) ? parseFloat($("#hanhdong").val().trim()) : null,
						"idMonHoc": ($("#monhoc").val().trim() != "" ) ? parseFloat($("#monhoc").val().trim()) : null,
					}
				CommonAjax.post("/giangvien/updateHDMH",dataa,addSuccess,addError);
			}
			function addSuccess(data){
				$("#myModalThem").modal("toggle");
				alert("Succes: "+data.message)
				location.reload();
			}
			function addError(data){
				alert("Error: "+data.message)
			}
		</script>
</body>
</html>
