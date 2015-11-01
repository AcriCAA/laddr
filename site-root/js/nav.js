

console.log("nav js loaded");


$(window).scroll(function() {
  if ($(document).scrollTop() > 35) {
    $('nav').addClass('shrink');
    $('img#nav-logo').animate({width: "15px","padding-top":"2px"},50,function(){});

  } else if($(document).scrollTop() < 35){
    $('nav').removeClass('shrink');
   $('img#nav-logo').animate({width: "59px"}, 50, function(){});
     
  }
});


   