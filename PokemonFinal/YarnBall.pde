class YarnBall {
   
   boolean isTouchingTheBall = false;
  
   int ballSize = 60;
   
   float posX = 0;
   float posY = -ballSize;
   int xFactor = int(random(1,4));
      
   float fallSpeed = 0;
   float gravity = 0.11f;
   
   boolean valid = true;
     
   void updateYarnBall(float _gravity, color _color){
     
     if (posY > ballSize * -2 && posY < height){
       
       gravity = _gravity;
     
       if (xFactor == 1) posX = 100;
       if (xFactor == 2) posX = 200;
       if (xFactor == 3) posX = 300;
     
       posY += fallSpeed;
       fallSpeed += gravity;
     
       fill(_color);
       ellipse (posX, posY, ballSize, ballSize);
       
     }    
         
   }
   
   boolean verifyHover(){
    
    if (mouseX > posX - ballSize/1.5 && mouseX < posX + ballSize/1.5 && mouseY > posY - ballSize/1.5 && mouseY < posY + ballSize/1.5){
      
      //println("touching the ball");
      return isTouchingTheBall = true;
      
    }else {
      //println("not touching the ball");
      return isTouchingTheBall = false;
    }
     
   }
   
   
}

