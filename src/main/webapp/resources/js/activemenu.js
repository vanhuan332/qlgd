$(document).ready(function(){
/* var activeurl = window.location.pathname;*/
 var activeurl = window.location.pathname;
 $('li a[href="' + activeurl + '"]').parent().addClass('active');
 $('li a[href="' + activeurl + '"]').parent().parent().parent().addClass('active menu-open');
 $('li a[href="' + activeurl + '"]').parent().parent().parent().parent().parent().addClass('active menu-open');
 
 $('#pUser').click(function(){
  if($('#pUser').click){	
   $('#doimk').toggle();
  }
 });
});