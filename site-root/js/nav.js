

if(window.pageYOffset > 35 && !collapsedBar){  // collapsed size
    collapsedBar = true;
    //collapse bar
   
    $('.navbar-brand').css('height', '50%');
     $('.navbar-brand').css('width', '50%');
   
   
   



  }else if(window.pageYOffset == 0){ //full size
    collapsedBar = false;
    $('.navbar-brand').css('height', '100%');
     $('.navbar-brand').css('width', '100%');
   
   
   
  }
}