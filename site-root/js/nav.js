

console.log("nav js loaded");


$(window).scroll(function() {
  if ($(document).scrollTop() > 35) {
    $('.navbar').addClass('shrink');
   $('img#nav-logo').animate({width: "15px"}, 200, function(){});
   console.log("ran shrink");
//$('img#nav-logo').animate({"width": "20px"}, 5000, "linear");
   
  } else if($(document).scrollTop() < 35){
    $('.navbar').removeClass('shrink');
   $('img#nav-logo').animate({width: "100px"}, 200, function(){});
   console.log("ran expand");
   
  // $('img#nav-logo').animate({"width": "100px"}, 5000, "linear");
       
  }
});


   