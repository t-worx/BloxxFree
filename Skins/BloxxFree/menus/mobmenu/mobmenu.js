$(function () {
    'use strict';
    
    // Index me, baby! 
    $('#CollapseMenuMob > ul > li').each(function() {
        var thisIndex = $(this).index() + 1;
        $(this).addClass('mobMenu' + thisIndex);
    });

});