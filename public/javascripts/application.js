// Drop down navigation
$(document).ready(function () {	    
    $('#navigation li').hover(
	function () {
	    //show its submenu
	    $('ul', this).slideDown(100);
	}, 
	function () {
	    //hide its submenu
	    $('ul', this).slideUp(100);			
	}
    );
});
