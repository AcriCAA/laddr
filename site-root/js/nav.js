

console.log("nav js loaded");


$(window).scroll(function() {
  if ($(document).scrollTop() > 35) {
    $('nav').addClass('shrink');
    $('img#nav-logo').animate({width: "3%","padding-top":"3px"},300,function(){});

  } else {
    $('nav').removeClass('shrink');
   $('img#nav-logo').animate({width: "5%"},300,function(){});
     
  }
});


   