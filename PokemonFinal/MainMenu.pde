class MainMenu {
 
 void runMainMenu(){
   drawLogo();
   drawButtons();
   drawHighScore();
 }
 
 void drawLogo(){
   imageMode(CENTER);
   image(loadImage("headitlogo.png"), width/2 , height/4);
 }
 
 void drawButtons(){

   imageMode(CENTER);
   image(loadImage("gamestartButton.png"), width/2 , 400);
   image(loadImage("quitButton.png"), width/2 , 480);
   
 }
 
 void drawHighScore(){
   fill(0);
   textSize(18);
   textAlign(CENTER, CENTER);
   text("HIGH SCORE: " + highScore, width/2, 580);
 }
 
 void mouseActions(){
  
  if (mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > 370 && mouseY < 430){
        
    screenCounter = 1;
    setup();
    
  }
  
  if (mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > 450 && mouseY < 510){
    
    exit();
    
  }
      
 }
   
}
