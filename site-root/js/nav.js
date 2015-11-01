

console.log("nav js loaded");


$(window).scroll(function() {
  if ($(document).scrollTop() > 35) {
    $('nav').addClass('shrink');
    $('img#nav-logo').animate({width: "10px","padding-top":"3px"},300,function(){});

  } else if($(document).scrollTop() < 35){
    $('nav').removeClass('shrink');
   $('img#nav-logo').animate({width: "59px"},300,function(){});
     
  }
});


   