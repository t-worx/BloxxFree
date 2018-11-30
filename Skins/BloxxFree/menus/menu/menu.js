$(function () {
    'use strict';
    function HoverOver() {
        var $menu = $(this).addClass('rmhover').find('.subMenu').stop();
        setDimensions($menu);
        $menu.slideDown(400).show();
    }
    function HoverOut() {
        $(this).removeClass('rmhover').find('.subMenu').stop().slideUp(200, function () {
            $(this).hide();
        });
    }
    function HoverOversub() {
        var $menu = $(this).addClass('rmhover').find('> .subMenuRight').stop();
        setDimensions($menu, $(this));
        $menu.slideDown(150).show();
    }
    function HoverOutsub() {
        $(this).removeClass('rmhover').find('> .subMenuRight').stop().slideUp(150, function () {
            $(this).hide();
        });
    }
    //Set dimensions of the dropdown
    function setDimensions($menu, $parent) {
        var $window = $(window);
        var isHidden = $menu.is(':hidden');
        $menu.show();
        var windowRight = $window.scrollLeft() + $window.width();
        if ($menu.length) {
            var menuLeft = $menu.offset().left;
            var menuRight = menuLeft + $menu.width();
            if (menuRight > windowRight) {
                if ($parent) {
                    $menu.css('left', (0 - $menu.width()) + 'px');
                } else {
                    $menu.css('left', (windowRight - menuRight - 5) + 'px');
                }
            }
        }
        if (isHidden) {
            $menu.hide();
        }
    }
    var config = {
        sensitivity: 2,
        interval: 0,
        over: HoverOver,
        timeout: 200,
        out: HoverOut
    };
    var configsub = {
        sensitivity: 2,
        interval: 150,
        over: HoverOversub,
        timeout: 150,
        out: HoverOutsub
    };

    // Index me, baby! 
    $('#dnnMenu .rootMenu > li').each(function () {
        var thisIndex = $(this).index() + 1;
        $(this).addClass('topMenu' + thisIndex);
    });

    $('#dnnMenu .rootMenu > li.haschild').hoverIntent(config);

    // Touch Device Proof
    $('#dnnMenu .rootMenu > li.haschild').click(function (event) {
        if (!$(this).hasClass('rmhover')) {
            event.preventDefault();
        }
    });

    // Only When Not Megamenu
    $(window).ready(function () {
        $('#dnnMenu li:not(.megamenu) .subMenu li.haschild').hoverIntent(configsub);
		
        // Touch Device Proof
        $('#dnnMenu li:not(.megamenu) .subMenu li.haschild').click(function (event) {
            if (!$(this).hasClass('rmhover')) {
                event.preventDefault();
            }
        });
    });
});