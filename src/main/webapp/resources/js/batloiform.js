$(function() {
	// form thêm nhom cap.
	$("form[name='registration']").validate({
		// Specify validation rules
		rules : {
			mota:{
				maxlength:2000
			},
			manhomcap : "required",
			tennhomcap : "required",
			makihieu : {
				required : true,
			// Specify that email should be validated
			// by the built-in "email" rule
			//email: true
			},
			daisotu : {
				required : true,
				// minlength: 5,
				maxlength : 12,
				number : true
			},
			daisoden : {
				required : true,
				number : true,
				//minlength: 5,
				maxlength : 12
			}
		},
		// Specify validation error messages
		mota:{
			maxlength:"Độ dài mô tả phải nhỏ hơn 2000 từ"
		},
		messages : {
			manhomcap : "Vui lòng nhập vào mã nhóm cấp",
			tennhomcap : "Vui lòng nhập vào tên nhóm cấp",
			makihieu : {
				required : "Vui lòng nhập vào mã ký hiệu",
				maxlength : "Độ dài dãy nhập vào phải nhỏ hơn 4"
			},
			daisotu : {
				required : "Vui lòng nhập vào dãi số",
				//minlength: "Ban nhap vao qua ngan",
				maxlength : "Độ dài dãy nhập vào phải nhỏ hơn 13",
				number : "Dãy nhập vào phải là số"
			},
			daisotu : {
				required : "Vui lòng nhập vào dãi số",
				//minlength: "Ban nhap vao qua ngan",
				maxlength : "Độ dài dãy nhập vào phải nhỏ hơn 13",
				number : "Dãy nhập vào phải là số"
			}
		},
		// Make sure the form is submitted to the destination defined
		// in the "action" attribute of the form when valid
		submitHandler : function(form) {
			var manhomcap = ($("#manhomcap").val().trim() != "") ? $("#manhomcap").val().trim() : null;
			var tennhomcap = ($("#tennhomcap").val().trim() != "") ? $("#tennhomcap").val().trim() : null;
			var makihieu = ($("#makihieu").val().trim() != "") ? $("#makihieu").val().trim() : null;
			var daisotu = ($("#daisotu").val().trim() != "") ? $("#daisotu").val().trim() : null;
			var daisoden = ($("#daisoden").val().trim() != "") ? $("#daisoden").val().trim() : null;
			var mota = ($('#mota').val().trim() != "" ) ? $("#mota").val().trim() : null;
			var ngaythanhlap = ($('#ngaythanhlap').val().trim() != "") ? $("#ngaythanhlap").val().trim() : null;
			var trangthai = ($('#trangthai').val().trim() != "") ? parseInt(($("#trangthai").val().trim()),10) : null;
			var ngayvohieu = ($('#ngayvohieu').val().trim() != "") ? $("#ngayvohieu").val().trim() : null;
			
			/* if(!$.isNumeric(daisoden)){
				isNumberForm(daisoden,'#daisoden'); return;
			} */
			if(manhomcap!=null && tennhomcap!=null){
				var test={
				    "orgCode": manhomcap,
				    "dateFoundation": ngaythanhlap,
				    "description": mota,
				    "disabledDate": ngayvohieu,
				    "isRoot": 0,
				    "orgName": tennhomcap,
				    "parentOrgCode": orgCodeClicked,
				    "sysStatus": trangthai,
				    "code": makihieu,
				    "typeId": null,
				    "fromNum": daisotu,
			        "toNum": daisoden,
			        "stCfgTypes": stCfgTypesArr  
				};
				console.log(JSON.stringify(test));
				CommonAjax.post(test,"/orgChart/add",function(data) {alert(data.message);},function(data) {alert(data.responseJSON.message);});
			
			} 
		}
	});
	
	//
});
