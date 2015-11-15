

console.log("nav js loaded");


// $(window).scroll(function() {
//   if ($(document).scrollTop() > 50) {
//     $('.navbar').addClass('shrink');
//    $('img#nav-logo').animate({width: "15px"}, 200, function(){});
//    console.log("ran shrink");
// //$('img#nav-logo').animate({"width": "20px"}, 5000, "linear");
   
//   } else if($(document).scrollTop() < 50){
//     $('.navbar').removeClass('shrink');
//    $('img#nav-logo').animate({width: "100px"}, 200, function(){});
//    console.log("ran expand");
   
//   // $('img#nav-logo').animate({"width": "100px"}, 5000, "linear");
       
//   }
// });


$(document).ready(function(){


var collapsedBar = false; 

 if(window.pageYOffset > 35 && !collapsedBar){  // collapsed size
          collapsedBar = true;
          //collapse bar
         
          $('img#nav-logo').animate({width: "20px"},300,function(){});
          
         // document.getElementById('span1').innerHTML='some value...';
  

        }else if(window.pageYOffset == 0){ //full size
          collapsedBar = false;
         
         $('img#nav-logo').animate({width: "100px"},300,function(){});

        }
      
    }


// just changed this

   