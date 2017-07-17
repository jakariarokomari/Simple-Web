$(document).ready(function(){
    $("#owlCarousel").owlCarousel({
        items:1,
        dots: true,
        autoplay: true,
        autoplayTimeout: 2000,
        loop: true
    });

    $('#toggleBtn').click(function() {
        $(this).toggleClass('active');
        $('#offCanvasMenu').toggleClass('open');
    });
});