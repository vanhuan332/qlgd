
function logout(){
	CommonAjax.post(null,"/oauth/logout",function(data){console.log(data);
	},null)
}

function toStringDDMMYYYY(data, type, row) {
	if(data == null || data == undefined)
	{
		return "";
	}
	var date = new Date(data)
  var mm = date.getMonth() + 1; // getMonth() is zero-based
  var dd = date.getDate();

  return dd + "/" + mm +"/" + date.getFullYear();
};

//Inputs wrapper is element wrap all inputs
function enterForm(inputsWrapperSelector,buttonSelector)
{
	$(inputsWrapperSelector + " input").keyup(function(event) {
	    if (event.keyCode === 13) {
	        $(buttonSelector).click();
	    }
	});
	
}