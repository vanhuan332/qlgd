function checkboxtable(selector1,selector2){
	$(selector1).click(function(){
		if($(selector1).prop('checked')){
			$(selector2).prop('checked', true);
		}
		else{
			$(selector2).prop('checked', false);
		}					
	});	
}

$(document).ready(function(){
	checkboxtable('.checkbox1','.checkbox2');
	checkboxtable('.checkbox3','.checkbox4');
	checkboxtable('.checkbox5','.checkbox6');
});