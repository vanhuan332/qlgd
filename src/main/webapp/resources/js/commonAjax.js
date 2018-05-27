/**
 * Ajax common function
 */
var urlApi= "http://localhost:8082/api";
var CommonAjax = {
	get :function ajaxGet(url,data,successHandler,errorHandler) {
		$.ajax({
			type : "GET",
			dataType : "json",
			url : urlApi+url,
			data : data,
			success : successHandler,
			error : successHandler,
		});
	},
	post : function ajaxGet(url,data,successHandler,errorHandler) {
		$.ajax({
			type : "POST",
			dataType : "json",
			url : urlApi+url,
			data : data,
			success : successHandler,
			error : successHandler,
		});
	},
	
	builtTable: function builtTable(data,header,renderButon){
		data.forEach(e =>{
			var tr = $('<tr/>');
			for(var i =1 ; i<header.length ; i++) {
				var td =$('<td/>');
				tr.append(td.html(e[header[i]]));
			}
			tr.append($('<td/>').html(renderButon(e[header[0]])));
			$("#example2 tbody").append(tr);
		})
		$("#example2").dataTable({"searching":false});
	}
	
}