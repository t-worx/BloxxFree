$(function() {
	'use strict';
		
	$('.gotoTop').click(function () {
		$('html, body').animate({
			scrollTop: 0
		}, 600);
		return false;
	});

	// my container has a Font Awesome icon
	$('.TitleTitle .fa').each(function(){
		$(this).parents(':header').addClass('heading-icon');
	});
	
	// Hide my padding if I'm empty!
	if ( $('.footerMain .DnnModule').length === 0 ) {
		$('.footerMain').addClass('noPad');
	}
	
	$('.padThis .alert-jumbo').each(function(){
		$('.close',this).on('click', function () {
			$(this).parents('.padThis').addClass('checkEmpty');
		});
		$(this).on('closed.bs.alert', function () {
			if( $.trim( $('.padThis.checkEmpty').text() ) === '') { 
				$('.padThis.checkEmpty').addClass('noPad');
			}
		}); 
	}); 
	
	// filter hack for unwanted encoded HTML
	$('.decode').each(function(){
		var deCode = $(this).text();
		$(this).html(deCode);
	});

	
	// safeguard edit mode rewriting code
	if ( !$('body').hasClass('dnnEditState') ) {

		// donut charts
		$('.donut[data-percentage]').each(function(){
			var thisPercentage = $(this).attr('data-percentage');
			var degrees = thisPercentage * 180/100;
			$('svg',this).css({
				'-webkit-transform': 'rotate('+ degrees +'deg)',
				   '-moz-transform': 'rotate('+ degrees +'deg)',
					'-ms-transform': 'rotate('+ degrees +'deg)',
						'transform': 'rotate('+ degrees +'deg)'
			});

			var donutFont = $(this).width();
			$(this).css('font-size',donutFont/7);
		});
	
		// Clickable DIVs
		$('.clickMe').each(function() {
			$(this).click(function() {
				var myLink = $(this).attr('data-click');
				window.location = myLink;
				return false;
			});
		});

	}


	// On window width change...
	$(window).load(function() {
		
		$(checkWidth);
		$(window).resize(checkWidth).trigger('resize');
		
		function checkWidth() {
			
			// close mob menu on window change
			$('#mobileMenu').removeClass('in');
	
			// fix font size
			$('.donut[data-percentage]').each(function(){
				var donutFont = $(this).width();
			//	alert(donutFont);
				$(this).css('font-size',donutFont/7);
			});
			
			var windowsize = $(window).width();
			if(windowsize < 767){} 
		}
	});

	
});



// For the Style Guide
$(function() {
	'use strict';
	$('.codeMe').each(function(){
		var codeMe = $(this).wrap('<div/>').parent().html().replace(/\t\s/g, ' ').replace(' codeMe','').replace(' class="codeMe"','');
		var encoded = $('<div/>').text(codeMe).html();
		$(this).before('<a class="showCode"><small>Show/Hide Code</small></a> <pre>' + encoded + '</pre>');
		$(this).parent().children('pre').hide();
		$(this).parent().children('.showCode').click(function(){
			$(this).parent().children('pre').toggle('slow');
		});
	});
});

