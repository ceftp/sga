$(document).ready(function() {
	
	$("#login").focus(function() {
		$('#login').val('');
		});	
	
	$("#login").blur(function() {
		$('#login').val("Digite aqui seu login");
		});	
	

});