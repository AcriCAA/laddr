

console.log("nav js loaded");


$(window).scroll(function() {
  if ($(document).window.pageYOffset > 35) {
    $('nav').addClass('shrink');
    $('img#nav-logo').animate({width: "10px","padding-top":"3px"},300,function(){});

  } else if ($(document).window.pageYOffset == 0) {
    $('nav').removeClass('shrink');
   $('img#nav-logo').animate({width: "58px"},300,function(){});
     
  }
});


   
   //if(window.pageYOffset > 35 && !collapsedBar)
   	//else if(window.pageYOffset == 0)