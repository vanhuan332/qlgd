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
							<h5 class="box-title">Tiêu Chí Thống Kê</h5>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<div class="row">
								<div class="col-md-12">
									<div class="form-group col-md-6">
										<label class="col-md-3">Năm Học</label>
										<div class="col-md-9">
											<select class="form-control select2">
												<option value="">2016-2017</option>
												<option value="">2017-2018</option>
												<option value="">2018-2019</option>
											</select>
										</div>
									</div>
									<div class="form-group col-md-6">
									<label class="col-md-3">Kì Học</label>
									<div class="col-md-9">
										<select class="form-control select2">
											<option value="">Kì 1</option>
											<option value="">Kì 2</option>
											<option value="">Kì 3</option>
										</select>
									</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group col-md-6">
									<label class="col-md-3">Đơn vị</label>
									<div class="col-md-9">
										<select class="form-control select2">
											<option value="">Công nghệ thông tin</option>
											<option value="">Quản trị nhân lực</option>
										</select>
									</div>
								</div>
									<div class="form-group col-md-6">
										<label class="col-md-3">Giảng viên</label>
										<div class="col-md-9">
											<select id="giangvien" class="form-control select2">
											</select>
										</div>
									</div>
								</div>
								<div class="col-md-12 footform">
									<button id="filter" onclick="filter();" class="btn btn-primary">Thống Kê</button>
									<button id="reset" onclick="resetInput();" class="btn btn-primary">Làm Lại</button>
								</div>
							</div>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- bat dau table -->
					<div class="col-md-12  box box-body">
						<div class="box-header with-border">
							<h5 class="box-title">Bản thống kê</h5>
							<a class="btn btn-primary pull-right" data-toggle="modal"
								data-target="#myModalIn">In Thống Kê</a>
						</div>
						<div class="col-md-12">
							<div class="col-md-6" style="text-align: center">
								<h5>TRƯỜNG ĐẠI HỌC KỸ THUẬT - HẬU CẦN CAND</h5>
								<h5 style="text-decoration: underline">KHOA CNTT</h5>
							</div>
							<div class="col-md-6" style="text-align: center">
								<h5>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM</h5>
								<h5 style="text-decoration: underline">Độc lập - Tự do -
									Hạnh Phúc</h5>
								<p>Bắc Ninh, ngày 20 tháng 4 năm 2018</p>
							</div>
							<div class="col-md-12">
								<h5 style="text-align: center">BẢN KÊ KHAI GIỜ THỰC HIỆN
									CỦA GIÁO VIÊN NĂM HỌC 2016 - 2017</h5>
								<p>Họ và tên giáo viên: <span id="tenGv"></span> .Chức danh giảng dạy, HL: <span id="chucDanh"></span></p>
								<p>Định mức giờ chuẩn: <span id="giochuan"></span> giờ; Miễn giảm: <span id="miengiampt"></span>% = <span id="miengiamgio"></span> giờ; Số
									giờ phải thực hiện: <span id="thuchien"></span> giờ</p>		
								<h5>I. Giờ chuẩn thự hiện</h5>			
							</div>
							<div class="col-md-12">
								<table id="example2" class="table table-bordered">
							
							 <tbody>
							  <tr>
							    <td>STT</td>
							    <td>Lớp</td>
							    <td>Học phần</td>
							    <td>Nội dung thực hiện 
(ghi rõ tên bài, chương: giảng lý thuyết, TL, TH…; ra đề thi, loại đề; coi thi; chấm thi tự luận, vấn đáp…)</td>
								<td>Số lượng/
								Đơn vị tính</td>
								<td>Hệ số quy đổi</td>
								<td>Tổng số giờ chuẩn</td>
								<td>Ghi chú</td>
							  </tr>
							  
							  </tbody> 
							</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- end row -->
		</div>
		<!-- end Contain -->
		<div class="modal fade" id="myModalIn" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close dongmodal" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Thông báo</h4>
					</div>
					<div class="modal-body">
						<h5>Bạn muốn in thống kê ?</h5>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default " id="okModalXoa"
							data-dismiss="modal">Đồng ý</button>
						<button type="button" class="btn dongmodal" data-dismiss="modal">Đóng</button>
					</div>
				</div>
			</div>
		</div>
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
	<script>
		$('.select2').select2();
		
		CommonAjax.get("/giangvien/list-giangvien",null,getCDSuccess,null);
		function getCDSuccess(data){
			data.forEach(ele => {
				$("#giangvien").append('<option value='+ele.idGiangVien+'>'+ele.fullName+'</option>')
			})
		}
		
		function filter(){
			var idGv = $("#giangvien").val();
			CommonAjax.get("/giangvien/giangvien-info/"+idGv,null,getGvSuccess,null);
			CommonAjax.get("/giangvien/thongke/"+idGv,null,getTkSuccess,null);
		}
		function getGvSuccess(data){
			var giogiam = parseFloat(data.mienGIam*data.dinhMucGioChuan/100).toFixed(1);
			$("#tenGv").html(data.fullName);
			$("#chucDanh").html(data.chucdanh.tenChucDanh);
			$("#giochuan").html(data.dinhMucGioChuan);
			$("#miengiampt").html(data.mienGIam);
			$("#miengiamgio").html(giogiam);
			$("#thuchien").html(data.soGioThucHien);
			$("#tonggio").html(data.tong);
			$("#thua").html(data.thua);
			$("#thieu").html(data.thieu);
		}
		function getTkSuccess(data){
			$("#example2 tbody").html("");
			var stt = 1;
			data.forEach(e => {
				var tr =$("<tr/>")
					tr.append($('<td/>').html(stt));
					tr.append($('<td/>').html(e.lophoc));
					tr.append($('<td/>').html(e.tenHocPhan));
					tr.append($('<td/>').html(e.noiDungThucHien));
					tr.append($('<td/>').html(e.soLuong));
					tr.append($('<td/>').html(e.heSoQuyDoi));
					tr.append($('<td/>').html(e.tongSoGioChuan));
					tr.append($('<td/>').html(""));
				$("#example2 tbody").append(tr);
				stt ++ ;
			})
			var tr2 = $("<tr/>");
			tr2.append($('<td colspan="7" style="text-align: center"/>').html('TỔNG CỘNG: <span id="tonggio"></span> giờ; 		Thừa: <span id="thua"></span> giờ; 	Thiếu: <span id="thieu"></span> giờ.'))
			tr2.append($('<td/>').html(""));
			$("#example2 tbody").append(tr2);
			
		}
		
		

	</script>
</body>
</html>
