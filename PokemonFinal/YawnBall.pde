class YawnBall {
  
   int ballSize = 50;
   float fallSpeed = 0;
   float posX = 0;
   float posY = -ballSize;
   int xFactor = int(random(1,4));
   
   float gravity = 0.1f;
     
   void updateYawnBall(){
       
     if (xFactor == 1) posX = 100;
     if (xFactor == 2) posX = 200;
     if (xFactor == 3) posX = 300;
     
     posY += fallSpeed;
     fallSpeed += gravity;
     
     fill(0,255,0);
     ellipse (posX, posY, ballSize, ballSize);
         
   }
   
   

}

