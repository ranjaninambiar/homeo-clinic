$(function() {

	'use strict';

	$('.js-menu-toggle').click(function(e) {

	var $this = $(this);

	if ( $('body').hasClass('show-sidebar') ) {
		$('body').removeClass('show-sidebar');
		$('.menu-text').addClass('menu-text-display');
		$this.removeClass('active');
	} else {
			$('body').addClass('show-sidebar');
			$('.menu-text').removeClass('menu-text-display');
			$this.addClass('active');
	}

	e.preventDefault();

	});

	// click outisde offcanvas
	$(document).mouseup(function(e) {
	var container = $(".sidebar");
	if (!container.is(e.target) && container.has(e.target).length === 0) {
		if ( $('body').hasClass('show-sidebar') ) {
				$('body').removeClass('show-sidebar');
				$('body').find('.js-menu-toggle').removeClass('active');
			}
	}
	}); 



});