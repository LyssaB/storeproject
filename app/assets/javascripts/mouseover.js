$(document).ready(function(){

	$(".product").mouseenter(function() {
		$(".prod_overlay", this).show();
	}).mouseleave(function() {
		$(".prod_overlay", this).hide();
	});

});