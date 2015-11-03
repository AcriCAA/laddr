

console.log("nav js loaded");


$(window).scroll(function() {
  if ($(document).scrollTop() > 35) {
    $('.navbar').addClass('shrink');
   // $('img#nav-logo').animate({width: "15px"},50,function(){});
$('img#nav-logo').animate(.css('width', '15px'));
   
  } else if($(document).scrollTop() < 35){
    $('.navbar').removeClass('shrink');
   //$('img#nav-logo').animate({width: "100px"}, 50, function(){});
   
   $('img#nav-logo').animate(.css('width', '100px'));
       
  }
});


   