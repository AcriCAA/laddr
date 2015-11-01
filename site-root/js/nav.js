

console.log("nav js loaded");


$(window).scroll(function() {
  if ($(document).scrollTop() > 35) {
    $('nav').addClass('shrink');
    $('img#nav-logo').animate({width: "15px"},50,function(){});

  } else if($(document).scrollTop() < 35){
    $('nav').removeClass('shrink');
   $('img#nav-logo').animate({width: "100px"}, 50, function(){});
     
  }
});


   