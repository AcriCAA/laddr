

console.log("nav js loaded");


$(window).scroll(function() {
  if ($(document).scrollTop() > 50) {
    $('nav').addClass('shrink');
     $('nav-logo').css('width', '3%');

  } else {
    $('nav').removeClass('shrink');
     
  }
});
