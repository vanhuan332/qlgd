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
							<h3 class="box-title">Danh sách môn học</h3>
							<a class="btn btn-primary pull-right" data-toggle="modal" onclick="themMonhoc();"
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
										<td>Sĩ số</td>
										<td>Tên Lớp</td>
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
			<form id ="themMonhocForm">
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
								<input id="mamonhoc" name="mamonhoc" type="text" class="form-control">
							</div>
						</div>
						<div class="col-md-12 form-group">
						<label class="col-md-4 ">Tên môn học <span>*</span></label>
							<div class="col-md-8">
								<input id="tenmonhoc" name="tenmonhoc" type="text" class="form-control">
							</div>
						</div>
						<div class="col-md-12 form-group">
						<label class="col-md-4 ">Số tín chỉ <span>*</span> </label>
							<div class="col-md-8">
								<input id="sotinchi" name="sotinchi" type="number" class="form-control">
							</div>
						</div>
						<div class="col-md-12 form-group">
						<label class="col-md-4 ">Số tiết <span>*</span></label>
							<div class="col-md-8">
								<input id="sotiet" name="sotiet" type="number" class="form-control">
							</div>
						</div>
						<div class="col-md-12 form-group">
						<label class="col-md-4 ">Sĩ số <span>*</span></label>
							<div class="col-md-8">
								<input id="siso" name="siso" type="number" class="form-control">
							</div>
						</div>
						<div class="col-md-12 form-group">
							<label class="col-md-4 ">Lớp <span>*</span></label>
							<div class="col-md-8">
								<select id="lop" name="lop" class="form-control select2"
									style="width: 100%;">
									<option value="">Chọn lớp</option>
									<option value="59KT001">59KT001</option>
									<option value="59LT001">59LT001</option>
									<option value="59LT002">59LT002</option>
									<option value="60KT001">60KT001</option>
									<option value="60LT001">60LT001</option>
									<option value="60LT002">60LT002</option>
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
	<script type="text/javascript"
		src="static/js/commonAjax.js"></script>
	<script src="static/js/select2.full.min.js"></script>
	<script src="static/js/jquery.validate.min.js"></script>
	<script>
	$('.modal-title').html("Form môn học");
	$('.select2').select2();
	CommonAjax.get("/monhoc/list-monhoc",null,getMonSuccess,getError);
	
	function renderButon(data) { 
		return '<button class="btn btn-info btn-sm" onclick="update(' + data + ')">Sửa</button>&nbsp;'+
	 '<button class="btnXoa btn btn-danger btn-sm" onclick="deleted('+ data +')">Xóa</button>';
	 }
	
	var hearder=["idMonHoc","maMonHoc","tenMonHoc","soTinChi","soTiet","siSo","tenLop"];
	function getMonSuccess(data){
		CommonAjax.builtTable(data,hearder,renderButon);
	}
	function getError(data){
		alert("Lỗi xảy ra")
	}
	
	var formValidator = $("#themMonhocForm").validate({
		rules : {
			mamonhoc : {
				required : true,
				maxlength : 10
			},
			tenmonhoc : {
				required : true,
				maxlength : 100
			},
			sotinchi : {
				required:true,
				max:5,
			},
			sotiet: {
				required:true,
				max:100,
			},
			siso: {
				required:true,
				max:100,
			},
			lop: {
				required:true,
			}
		},
		messages : {
			mamonhoc:{
				required: "Vui lòng nhập mã monhoc",
				maxlength: "Độ dài không vượt quá 10 kí tự"
			},
			tenmonhoc: {
				required: "Vui lòng nhập tên môn học",
				maxlength: "Độ dài không vượt quá 100 kí tự"
			},
			sotinchi : {
				required: "Vui lòng nhập số tín chỉ",
				max: "Số tín chỉ không được vượt quá 5"
			},
			sotiet: {
				required: "Vui lòng nhập vào số tiết",
				maxlength: "Số tiết không được vượt quá 100"
			},
			siso: {
				required: "Vui lòng nhập vào sĩ số",
				max: "Sĩ số không được vượt quá 100"
			},
			lop: {
				required: "Vui lòng chọn lớp"
			}
		}		
	});	
	
	//add Mon hoc
	function themMonhoc(){
		$("#myModalThem .modal-title").html("Thêm Môn Học");
		$("#myModalThem").modal("toggle");
		$("#mamonhoc").val("");
		$("#tenmonhoc").val("");
		$("#siso").val("");
		$("#sotiet").val("");
		$("#sotinchi").val("");
		formValidator.settings.submitHandler = addHandler;
	}
	
	function addHandler(){
		var dataa = {
			"maMonHoc": ($("#mamonhoc").val().trim() != "" ) ? $("#mamonhoc").val().trim() : null,
			"siSo": ($("#siso").val().trim() != "" ) ? $("#siso").val().trim() : null,
			"soTiet": ($("#sotiet").val().trim() != "" ) ? $("#sotiet").val().trim() : null,
			"soTinChi":($("#sotinchi").val().trim() != "" ) ? $("#sotinchi").val().trim() : null,
			"tenMonHoc": ($("#tenmonhoc").val().trim() != "" ) ? $("#tenmonhoc").val().trim() : null,
			"tenLop":  ($("#lop").val().trim() != "" ) ? $("#lop").val().trim() : null
		}
		CommonAjax.post("/monhoc/add",dataa,addSuccess,addError);
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
		var idMon = id;
		CommonAjax.get("/monhoc/monhoc-info/"+idMon,null,succesDetail,null)
		$("#myModalThem .modal-title").html("Sửa Môn Học");
		$("#myModalThem").modal("toggle");
		formValidator.settings.submitHandler = function updateHandler(idMon){
			var dataa = {
				"idMonHoc": id,
				"maMonHoc": ($("#mamonhoc").val().trim() != "" ) ? $("#mamonhoc").val().trim() : null,
				"siSo": ($("#siso").val().trim() != "" ) ? $("#siso").val().trim() : null,
				"soTiet": ($("#sotiet").val().trim() != "" ) ? $("#sotiet").val().trim() : null,
				"soTinChi":($("#sotinchi").val().trim() != "" ) ? $("#sotinchi").val().trim() : null,
				"tenMonHoc": ($("#tenmonhoc").val().trim() != "" ) ? $("#tenmonhoc").val().trim() : null,
				"tenLop":  ($("#lop").val().trim() != "" ) ? $("#lop").val().trim() : null
			}
			CommonAjax.post("/monhoc/update",dataa,addSuccess,addError);
		};	
	}
	
	function succesDetail(data) {
		$("#mamonhoc").val(data.maMonHoc);
		$("#tenmonhoc").val(data.tenMonHoc);
		$("#siso").val(data.siSo);
		$("#sotiet").val(data.soTiet);
		$("#sotinchi").val(data.soTinChi);
		$("#lop").val(data.tenLop).trigger("change");
	}
	//xoa 
	var idxoa=null;
	function deleted(id){
		$('#myModalXoa').modal('toggle');
		idxoa = id; 
	}
	$('#okModalXoa').on('click',function(){
		CommonAjax.post("/monhoc/delete",{"idMonHoc":idxoa},deleteSuccess,deleteError);
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
