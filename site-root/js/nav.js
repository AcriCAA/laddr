

console.log("nav js loaded");


$(window).scroll(function() {
  if ($(document).scrollTop() > 50) {
    $('nav').addClass('shrink');
     $('nav-logo').css('height', '1%');
     $('nav-logo').css('width', '1%');

  } else {
    $('nav').removeClass('shrink');
     
  }
});
