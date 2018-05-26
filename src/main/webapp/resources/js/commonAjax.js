/**
 * Ajax common function
 */
var CommonAjax = {
	get : function(data,path, successCallback, errorCallback){
		$.get({
			url: "api/get",
			data: {url:path},
			success : successCallback,
		}).fail(function(data){
			if(data.status == 401)
			{
				window.location.href = "logout";
			}
		}).fail(errorCallback)
	},
	post : function(data, path, successCallback, errorCallback){
		var ajaxObject = {
				url: path,
				data: JSON.stringify(data),
			}
		$.post({
			url: "api/post",
			contentType: "application/json",
			data: JSON.stringify(ajaxObject),
			success : successCallback,
		}).fail(function(data){
			if(data.status == 401)
			{
				window.location.href = "logout";
			}
		}).fail(errorCallback)
	}
}
