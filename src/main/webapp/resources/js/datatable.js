var dataTable;

function checkboxtable(selector1, selector2) {
	$(selector1).click(function() {
		if ($(selector1).prop('checked')) {
			$(selector2).prop('checked', true);
		} else {
			$(selector2).prop('checked', false);
		}
	});
}

$.fn.dataTable.ext.errMode = 'none';
jQuery.fn.dataTableExt.oApi.fnSetFilteringEnterPress = function(oSettings) {
	var _that = this;

	this.each(function(i) {
		$.fn.dataTableExt.iApiIndex = i;
		var anControl = $('input', _that.fnSettings().aanFeatures.f);

		anControl.unbind('keyup search input').bind(
				'keyup search input',
				function(e) {
					if (anControl.val().length == ""
							|| anControl.val().length > 2) {
						_that.fnFilter(anControl.val());
					}
				});
		return this;
	});
	return this;
};

function buildDataTable(selector, url, tableMapping, orderCol, serialCol,
		paramData, defaultPageLength) {
	if ($.fn.dataTable.isDataTable($(selector))) {
		$(selector).DataTable().destroy();
	}
	var lengthChange = false;
	if (defaultPageLength == null || defaultPageLength == undefined) {
		defaultPageLength = 20;
		lengthChange = true;
	}
	var ajax;
	if (paramData == null || paramData == undefined) {
		ajax = {
			"method" : 'get',
			"url" : "api/get/datatable?url=" + url,
			contentType : "application/json",
			"data" : function(data) {
			},
			error : function(data) {
				if (data.status == 401) {
					window.location.href = "logout";
				}
			}
		}
	} else {
		ajax = {
			"method" : 'post',
			"url" : "api/post/datatable",
			contentType : "application/json",
			"data" : function(data) {
				var requestObject = {
					dataTableInRQ : data,
					paramData : paramData
				}
				var ajaxObj = {
					data : JSON.stringify(requestObject),
					url : url
				}
				return JSON.stringify(ajaxObj);
			},
			error : function(data) {
				if (data.status == 401) {
					window.location.href = "logout";
				}
			}
		}
	}
	$(selector)
			.DataTable(
					{
						"processing" : true,
						"serverSide" : true,
						"pageLength" : defaultPageLength,
						"autoWidth" : false,
						"dom" : '<"col-md-12"<"col-md-4"i><"col-md-4"l><"col-md-4"p>>t<"bottom col-md-12"<"col-md-4"i><"col-md-4"l><"col-md-4"p>>',
						'searching' : false,
						'responsive' : true,
						"ajax" : ajax,
						// "bSort": false,
						"order" : [ [ orderCol - 1, "desc" ] ],
						"columns" : tableMapping,
						"orderCellsTop" : true,
						"lengthMenu" : [ 20, 30, 50 ],
						"lengthChange" : lengthChange,
						"language" : {
							"lengthMenu" : "Hiển thị _MENU_ trang",
							"zeroRecords" : "Không có dữ liệu",
							"infoEmpty" : "Không có dữ liệu",
							"infoFiltered" : "",
							"decimal" : "",
							"emptyTable" : "Không có dữ liệu",
							"info" : "Bản ghi _START_ đến _END_ của _TOTAL_ bản ghi",
							"infoPostFix" : "",
							"thousands" : ",",
							"loadingRecords" : "Loading...",
							"processing" : "Đang xử lý dữ liệu...",
							"search" : "Tìm Kiếm:",
							"paginate" : {
								"first" : "Trang đầu",
								"last" : "Trang cuối",
								"next" : "Trang tiếp",
								"previous" : "Trang trước"
							},
							"aria" : {
								"sortAscending" : ": Sắp xếp tăng dần",
								"sortDescending" : ": Sắp xếp giảm dần"
							}
						},
						responsive : true,
						drawCallback : function(settings) {
							var pagination = $(this).closest(
									'.dataTables_wrapper').find(
									'.dataTables_paginate');
							pagination.toggle(this.api().page.info().pages > 1);
						}
					});
	$(selector).DataTable().on(
			'error.dt',
			function(e, settings, techNote, message) {
				console.log('An error has been reported by DataTables: ',
						message);
			});
	$(selector).DataTable().on(
			'order.dt processing.dt',
			function() {
				if (serialCol != null && serialCol != undefined
						&& serialCol > 0) {
					$(selector).DataTable().column(serialCol - 1, {
						search : 'applied',
						order : 'applied'
					}).nodes().each(
							function(cell, i) {
								cell.innerHTML = $(selector).DataTable().page
										.info().start
										+ i + 1;
							});
				}
			}).draw();
	checkboxtable('.checkbox1', '.checkbox2');
}
