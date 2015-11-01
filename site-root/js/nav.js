

console.log("nav js loaded");


if(window.pageYOffset > 35) {
  if ($(document).scrollTop() > 35) {
    $('nav').addClass('shrink');
    $('img#nav-logo').animate({width: "10px","padding-top":"2px"},200,function(){});

  } else if (window.pageYOffset == 0) {
    $('nav').removeClass('shrink');
   $('img#nav-logo').animate({width: "58px"},200,function(){});
     
  }
});
