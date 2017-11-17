/*$(function(){
	$('.fantasma').change(function(){
  	if(!$(this).prop('checked')){
    	$('#dvOcultar').show();
    }else{
    	$('#dvOcultar').hide();
    }
  
  })

})*/

$(document).ready(function(){
	$('.fantasma').change(function(){
  	if($(this).prop('checked')){
    	$('#dvOcultar').show();
    }else{
    	$('#dvOcultar').hide();
    }
  
  })

});	
