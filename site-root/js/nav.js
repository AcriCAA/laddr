

if(window.pageYOffset > 35 && !collapsedBar){  // collapsed size
    collapsedBar = true;
    //collapse bar
   
    $('.brand').css('height', '50%');
     $('.brand').css('width', '50%');
   
   
   



  }else if(window.pageYOffset == 0){ //full size
    collapsedBar = false;
    $('.brand').css('height', '100%');
     $('.brand').css('width', '100%');
   
   
   
  }
}