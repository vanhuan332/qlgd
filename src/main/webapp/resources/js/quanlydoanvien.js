
		var myList = [
		  { "madoan": "500","hoten":"Trần Văn Huấn","gtinh":"Nam","ngaysinh":"13/11/1994","nhomcap":"Đảng","ngayvaodoan":"27/6/2013","tinhtrangdv":"Chuyên","loaihanhdong":"Tìm","trangthai":"Tốt" },
		  { "madoan": "501","hoten":"Đào Tuấn Long","gtinh":"Nam","ngaysinh":"13/11/1994","nhomcap":"Đoàn","ngayvaodoan":"27/6/2013","tinhtrangdv":"Chuyên","loaihanhdong":"Tìm","trangthai":"Tốt" },
		  { "madoan": "502","hoten":"Lê Thị Hiền","gtinh":"Nữ","ngaysinh":"13/11/1994","nhomcap":"Đoàn","ngayvaodoan":"27/6/2013","tinhtrangdv":"Chuyên","loaihanhdong":"Tìm","trangthai":"Tốt" },
		  { "madoan": "503","hoten":"Nguyễn Thị Kiếm","gtinh":"Nữ","ngaysinh":"13/11/1994","nhomcap":"Đoàn","ngayvaodoan":"27/6/2013","tinhtrangdv":"Chuyên","loaihanhdong":"Tìm","trangthai":"Tốt" },
		  { "madoan": "504","hoten":"Trần Thái Hòa","gtinh":"Nam","ngaysinh":"13/11/1994","nhomcap":"Đoàn","ngayvaodoan":"27/6/2013","tinhtrangdv":"Chuyên","loaihanhdong":"Tìm","trangthai":"Tốt" },		  
		];

		function selectOption(){
			var tinh1="";
			var nhom1="";
			$('#nhomcap').html("");
			$('#tinhtrang').html("");
			$("#tinhtrang").append('<option value=""></option>');
			$("#nhomcap").append('<option value=""></option>');
			
			$.each(myList, function(index, value){
				if(tinh1!=value.tinhtrangdv && value.tinhtrangdv!=""){
				$("#tinhtrang").append('<option value="'+value.tinhtrangdv+'">'+value.tinhtrangdv+'</option>');
				tinh1=value.tinhtrangdv;
				}
				if(nhom1!=value.nhomcap && value.nhomcap!=""){				
				$("#nhomcap").append('<option class=="option1" value="'+value.nhomcap+'">'+value.nhomcap+'</option>');
				nhom1=value.nhomcap;
				}
			});
		}

		
			function themdv(){		
				var madoan = $('#md').val().trim();
				var hoten = $('#ht').val().trim();
				var gioitinh= $('#gt').val().trim();
				var ngaysinh = $('#ns').val().trim();
				var nhomcap = $('#nc').val().trim();
				var ngayvaodoan= $('#nvd').val().trim();
				var tinhtrangdv = $('#ttdv').val().trim();
				var loaihanhdong = $('#lhd').val().trim();
				var tinhtrang= $('#tt').val().trim();
				if(madoan!==""){
					myList.push({"madoan": madoan, "hoten": hoten, "gtinh": gioitinh,"ngaysinh":ngaysinh,"nhomcap":nhomcap,"ngayvaodoan":ngayvaodoan,"tinhtrangdv":tinhtrangdv,"loaihanhdong":loaihanhdong,"trangthai":tinhtrang});
				}
			}
			
			function filterdv(myList){
				var mdv=$('#mdv').val().trim();
				var hoten=$('#hoten').val().trim();
				var nhomcap=$('#nhomcap').val().trim();
				var tinhtrang=$('#tinhtrang').val().trim();
				var result = {"data":[]};
				for( var i= 0, len = myList.length; i < len; i++) {					
					var el = myList[i];
					
					if( el.madoan == mdv ) {
						result.data.push( el );
					}
				}
				
					return result;	
			}
			
		
			$(document).ready(function(){
				buildHtmlTable(myList,'#example2');
				checkboxtable('.checkbox1','.checkbox2');
				selectOption();
				$('#themdv').click(function(){
					
					themdv();
					buildHtmlTable(myList,'#example2');
					selectOption();
					$('#modal-id').modal('toggle');
				});
				$('#filter').click(function(){
					
					buildHtmlTable(filterdv(myList),'#example2');
					selectOption();
				});
			});
			
		