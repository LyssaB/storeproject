
$(document).ready(function() {
	//$(".alert").fadeIn(1000).delay(2000).fadeOut(1500);
	window.setTimeout(function() {	
		$(".alert").slideUp(500, function() {
		$(this).remove();
	});
	}, 3000);

});