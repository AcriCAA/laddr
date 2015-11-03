

console.log("nav js loaded");


$(window).scroll(function() {
  if ($(document).scrollTop() > 35) {
    $('.navbar').addClass('shrink');
   $('img#nav-logo').animate({width: "15px"},fast, function(){});
//$('img#nav-logo').animate({"width": "20px"}, 5000, "linear");
   
  } else if($(document).scrollTop() < 35){
    $('.navbar').removeClass('shrink');
   $('img#nav-logo').animate({width: "100px"}, fast, function(){});
   
  // $('img#nav-logo').animate({"width": "100px"}, 5000, "linear");
       
  }
});


   