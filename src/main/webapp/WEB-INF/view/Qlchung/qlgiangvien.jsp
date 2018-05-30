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
					<!-- bat dau table -->
					<div class="col-md-12  box box-body">
						<div class="box-header with-border">
							<h3 class="box-title">Danh sách giảng viên</h3>
							<a class="btn btn-primary pull-right" data-toggle="modal" onclick = "them();">Thêm</a>
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
		<form id= "themMonhocForm">
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
								<input id="magiangvien" name="magiangvien" type="text" class="form-control">
							</div>
						</div>
						<div class="col-md-12 form-group">
							<label class="col-md-4 ">Tên giảng viên <span>*</span></label>
							<div class="col-md-8">
								<input id="tengiangvien" name="tengiangvien" type="text" class="form-control">
							</div>
						</div>
						<div class="col-md-12 form-group">
							<label class="col-md-4 ">Ngày sinh</label>
							<div class="col-md-8">
								<input id="ngaysinh" name="tengiangvien" type="date" value="" class="form-control" />
							</div>
						</div>
						<div class="col-md-12 form-group">
							<label class="col-md-4 ">Quê Quán</label>
							<div class="col-md-8">
								<input id="quequan" name="quequan" type="text" value="" class="form-control" />
							</div>
						</div>
						<div class="col-md-12 form-group">
							<label class="col-md-4 ">Chức danh </label>
							<div class="col-md-8">
								<select id="chucdanh" name="chucdanh" class="form-control select2"
									style="width: 100%;">
								</select>
							</div>
						</div>
						<div class="col-md-12 form-group">
							<label class="col-md-4 ">Chức vụ </label>
							<div class="col-md-8">
								<select id="chucvu" name="chucvu" class="form-control select2"
									style="width: 100%;">
								</select>
							</div>
						</div>
						<div class="col-md-12 form-group">
							<label class="col-md-4 ">Phòng ban</label>
							<div class="col-md-8">
								<select id="phongban" name="phongban" class="form-control select2"
									style="width: 100%;">
								</select>
							</div>
						</div>
						
					</div>
					<div class="modal-footer">
						<input class="btn btn-primary" type="submit" value="Lưu" id="save" >
						<button type="button" class="btn dongmodal" data-dismiss="modal">Đóng</button>
					</div>
				</div>
			</div>
			</form>
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
	<script src="static/js/select2.full.min.js"></script>
	<script src="static/js/jquery.validate.min.js"></script>
	<script>
		$('.modal-title').html("Thêm môn học");
		$('.select2').select2();
		
		function builtTable(data,renderButon){
			data.forEach(e => {
				var tr = $('<tr/>');
					var td =$('<td/>');
					tr.append($('<td/>').html(e.maGv));
					tr.append($('<td/>').html(e.fullName));
					tr.append($('<td/>').html(e.chucdanh.tenChucDanh));
					tr.append($('<td/>').html(e.chucvu.tenChucVu));
					tr.append($('<td/>').html(e.phongban.tenPhongBan));
					tr.append($('<td/>').html(renderButon(e.idGiangVien)));
				$("#example2 tbody").append(tr);
			})
			$("#example2").dataTable({"searching":false});
		}
		
		var formValidator = $("#themMonhocForm").validate({
			rules : {
				magiangvien : {
					required : true,
					maxlength : 10
				},
				tengiangvien : {
					required : true,
					maxlength : 100
				},
				ngaysinh : {
					required:true,
				},
				quequan: {
					required:true,
					maxlength:100
				},
				chucdanh: {
					required:true,
				},
				chucvu: {
					required:true,
				},
				phongban: {
					required:true,
				}
			},
			messages : {
				magiangvien:{
					required: "Vui lòng nhập mã giảng viên",
					maxlength: "Độ dài không vượt quá 10 kí tự"
				},
				tengiangvien: {
					required: "Vui lòng nhập tên giảng viên",
					maxlength: "Độ dài không vượt quá 100 kí tự"
				},
				ngaysinh : {
					required: "Vui lòng nhập ngày sinh",
				},
				quequan: {
					required: "Vui lòng nhập vào quê quán",
					maxlength: "Độ dài không được vượt quá 100"
				},
				chucdanh: {
					required: "Vui lòng chọn chức danh",
				},
				chucvu: {
					required: "Vui lòng chọn chức vụ"
				},
				phongban: {
					required: "Vui lòng chọn phòng ban",
				}
			}		
		});	
		
		CommonAjax.get("/giangvien/list-giangvien",null,getMonSuccess,getError);
		function renderButon(data) { 
			return '<button class="btn btn-info btn-sm" onclick="update(' + data + ')">Sửa</button>&nbsp;'+
		 	'<button class="btnXoa btn btn-danger btn-sm" onclick="deleted('+ data +')">Xóa</button>';
		 }
		var hearder=["idGiangVien","maGv","fullName","chucdanh","chucvu","phongban"];
		function getMonSuccess(data){
			builtTable(data,renderButon)
			//CommonAjax.builtTable(data,hearder,renderButon);
			
		}
		
		function getError(data){
			alert("Lỗi xảy ra")
		}
		
		CommonAjax.get("/chucdanh/list-chucdanh",null,getCDSuccess,null);
		function getCDSuccess(data){
			data.forEach(ele => {
				$("#chucdanh").append('<option value='+ele.idChucDanh+'>'+ele.tenChucDanh+'</option>')
			})
			
		}
		
		CommonAjax.get("/chucvu/list-chucvu",null,getCVSuccess,null);
		function getCVSuccess(data){
			data.forEach(ele => {
				$("#chucvu").append('<option value='+ele.idChucVu+'>'+ele.tenChucVu+'</option>')
			})
			
		}
		CommonAjax.get("/phongban/list-phongban",null,getPBSuccess,null);
		function getPBSuccess(data){
			data.forEach(ele => {
				$("#phongban").append('<option value='+ele.idPhongBan+'>'+ele.tenPhongBan+'</option>')
			})
			
		}
		
		function them(){
			$("#myModalThem .modal-title").html("Thêm Giảng Viên");
			$("#myModalThem").modal("toggle");
			$("#magiangvien").val("");
			$("#tengiangvien").val("");
			$("#ngaysinh").val("");
			$("#quequan").val("");
			$("#phongban").val("").trigger("change");
			$("#chucdanh").val("").trigger("change");
			$("#chucvu").val("").trigger("change");
			formValidator.settings.submitHandler = addHandler;
		}
		function addHandler(){
			var dataa = {
					"birthDay": ($("#ngaysinh").val().trim() != "" ) ? $("#ngaysinh").val().trim() : null,
					"fullName": ($("#tengiangvien").val().trim() != "" ) ? $("#tengiangvien").val().trim() : null,
					"maGv": ($("#magiangvien").val().trim() != "" ) ? $("#magiangvien").val().trim() : null,
					"queQuan": ($("#quequan").val().trim() != "" ) ? $("#quequan").val().trim() : null,
					"idChucDanh": ($("#chucdanh").val().trim() != "" ) ? $("#chucdanh").val().trim() : null,
					"idChucVu": ($("#chucvu").val().trim() != "" ) ? $("#chucvu").val().trim() : null,
					"idPhongBan": ($("#phongban").val().trim() != "" ) ? $("#phongban").val().trim() : null, 
			}
			CommonAjax.post("/giangvien/add",dataa,addSuccess,addError);
		}
		function addSuccess(data){
			$("#myModalThem").modal("toggle");
			alert("Succes: "+data.message)
			location.reload();
		}
		function addError(data){
			alert("Error: "+data.message)
		}
		//update
		function update(id){
			var idM = id;
			CommonAjax.get("/giangvien/giangvien-info/"+idM,null,succesDetail,null)
			$("#myModalThem .modal-title").html("Sửa Giảng Viên");
			$("#myModalThem").modal("toggle");
			formValidator.settings.submitHandler = function updateHandler(idMon){
				var dataa = {
						"idGiangVien":idM,
						"birthDay": ($("#ngaysinh").val().trim() != "" ) ? $("#ngaysinh").val().trim() : null,
						"fullName": ($("#tengiangvien").val().trim() != "" ) ? $("#tengiangvien").val().trim() : null,
						"maGv": ($("#magiangvien").val().trim() != "" ) ? $("#magiangvien").val().trim() : null,
						"queQuan": ($("#quequan").val().trim() != "" ) ? $("#quequan").val().trim() : null,
						"idChucDanh": ($("#chucdanh").val().trim() != "" ) ? $("#chucdanh").val().trim() : null,
						"idChucVu": ($("#chucvu").val().trim() != "" ) ? $("#chucvu").val().trim() : null,
						"idPhongBan": ($("#phongban").val().trim() != "" ) ? $("#phongban").val().trim() : null, 
				}
				CommonAjax.post("/giangvien/update",dataa,addSuccess,addError);
			};	
		}
		
		function succesDetail(data) {
			$("#magiangvien").val(data.maGv);
			$("#tengiangvien").val(data.fullName);
			$("#ngaysinh").val(data.birthDay);
			$("#quequan").val(data.queQuan);
			$("#phongban").val(data.phongban.idPhongBan).trigger("change");
			$("#chucdanh").val(data.chucdanh.idChucDanh).trigger("change");
			$("#chucvu").val(data.chucvu.idChucVu).trigger("change");
		}
		
		//xoa 
		var idxoa=null;
		function deleted(id){
			$('#myModalXoa').modal('toggle');
			idxoa = id; 
		}
		$('#okModalXoa').on('click',function(){
			CommonAjax.post("/giangvien/delete",{"idGiangVien":idxoa},deleteSuccess,deleteError);
		});
		function deleteSuccess(data){
			alert("Succes: "+data.message);
			location.reload();
		}
		function deleteError(data){
			alert("Error: "+data.message)
		}
	</script>
</body>
</html>
