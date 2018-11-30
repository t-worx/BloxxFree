$(function () {
    'use strict';

	// Index me, baby! 
    $('#SideMenu > ul > li').each(function() {
        var thisIndex = $(this).index() + 1;
        $(this).addClass('mobMenu' + thisIndex);
    });

	
});