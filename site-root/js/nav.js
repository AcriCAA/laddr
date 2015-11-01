

console.log("nav js loaded");


$(window).scroll(function() {
  if ($(document).scrollTop() > 50) {
    $('nav').addClass('shrink');
     $('nav-logo').css('height', '25%');
     $('nav-logo').css('width', '25%');

  } else {
    $('nav').removeClass('shrink');
     $('nav-logo').css('height', '50%');
     $('nav-logo').css('width', '50%');
  }
});
