
		var myList = {"data":[
		  { "madoan": "500","hoten":"Trần Văn Huấn","capcongdoan":"Trung ương","ngayvaodoan":"20/10/2017","tinhtrang":"Bình thường","yeucauchinhsua":"Sửa ngày sinh" },
		  { "madoan": "501","hoten":"Đào Tuấn Long","capcongdoan":"Trung ương","ngayvaodoan":"20/10/2017","tinhtrang":"Bình thường","yeucauchinhsua":"Sửa ngày sinh"  },
		  { "madoan": "502","hoten":"Lê Thị Hiền","capcongdoan":"Trung ương","ngayvaodoan":"20/10/2017","tinhtrang":"Bình thường","yeucauchinhsua":"Sửa ngày sinh" },
		  { "madoan": "503","hoten":"Nguyễn Thị Kiếm","capcongdoan":"Trung ương","ngayvaodoan":"20/10/2017","tinhtrang":"Bình thường","yeucauchinhsua":"Sửa ngày sinh" },
		  { "madoan": "504","hoten":"Trần Thái Hòa","capcongdoan":"Trung ương","ngayvaodoan":"20/10/2017","tinhtrang":"Bình thường","yeucauchinhsua":"Sửa ngày sinh"  },		  
		]};

		function selectOption(){
			var tinh1="";
			var nhom1="";
			$('#nhomcap').html("");
			$('#tinhtrang').html("");
			$("#tinhtrang").append('<option value=""></option>');
			$("#nhomcap").append('<option value=""></option>');
			
			$.each(myList.data, function(index, value){
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

		// Builds the HTML Table out of myList.
		function buildHtmlTable(myList,selector) {
		  var columns = addAllColumnHeaders(myList, selector);
		  $('#tbody1').remove();
		  var tbody = $('<tbody id="tbody1">/');
		  
		  for (var i = 0; i < myList.data.length; i++) {
		    var row$ = $('<tr/>');
			$(row$).append($('<td/>').html(i+1));
		    for (var colIndex = 0; colIndex < columns.length; colIndex++) {
		      var cellValue = myList.data[i][columns[colIndex]];
		      if (cellValue == null) cellValue = "";
		      row$.append($('<td/>').html(cellValue));
		    }
		    $(tbody).append(row$);
		    $(selector).append(tbody);
		   row$.append('<td><input class="checkbox2" type="checkbox" value="'+myList.data[i].madoan+'"></td>');
		  }
		  
		}

		// Adds a header row to the table and returns the set of columns.
		// Need to do union of keys from all records as some records may not contain
		// all records.
		function addAllColumnHeaders(myList, selector) {
		  var columnSet = [];
		  var headerTr$ = $('<tr/>');	  
		  for (var i = 0; i < myList.data.length; i++) {
		    var rowHash = myList.data[i];
		    for (var key in rowHash) {
		      if ($.inArray(key, columnSet) == -1) {
		        columnSet.push(key);
		      }
		    }
		  }
		  return columnSet;
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
					myList.data.push({"madoan": madoan, "hoten": hoten, "gtinh": gioitinh,"ngaysinh":ngaysinh,"nhomcap":nhomcap,"ngayvaodoan":ngayvaodoan,"tinhtrangdv":tinhtrangdv,"loaihanhdong":loaihanhdong,"trangthai":tinhtrang});
				}
			}
			
			function filterdv(myList){
				var mdv=$('#mdv').val().trim();
				var hoten=$('#hoten').val().trim();
				var nhomcap=$('#nhomcap').val().trim();
				var tinhtrang=$('#tinhtrang').val().trim();
				var result = {"data":[]};
				for( var i= 0, len = myList.data.length; i < len; i++) {					
					var el = myList.data[i];
					
					if( el.madoan == mdv ) {
						result.data.push( el );
					}
				}
				
					return result;
				
			}
		

		<!-- load page script -->
		
			$(document).ready(function(){
				buildHtmlTable(myList,'#example2');
				
				$('.checkbox1').click(function(){
					if($('.checkbox1').prop('checked')){
						$(".checkbox2").prop('checked', true);
					}
					else{
						$(".checkbox2").prop('checked', false);
					}					
				});
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
			
		