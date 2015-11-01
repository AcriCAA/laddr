

if(window.pageYOffset > 35 && !collapsedBar){  // collapsed size
    collapsedBar = true;
    //collapse bar
   
    $('.nav-logo').css('height', '100%');
     $('.nav-logo').css('width', '100%');
   
   
   



  }else if(window.pageYOffset == 0){ //full size
    collapsedBar = false;
    $('.brand').css('height', '50%');
     $('.brand').css('width', '50%');
   
   
   
  }
}