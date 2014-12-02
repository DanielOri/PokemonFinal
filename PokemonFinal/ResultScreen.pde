class ResultScreen {
  
  float hitScore = 0;
  float finalCombo = 0;
  float finalScore = 0;
  
  void runResultScreen(){
    drawBox();
    
    drawHitScore();
    drawFinalCombo();
    drawFinalScore();
    
    drawButtons();
  }
  
  void drawBox(){
   
    fill(100, 255, 0);
    rectMode(CENTER);
    rect(width/2, 125, 350, 200);
   
    
  }
  
  void drawHitScore(){
    if(hitScore < gs.score){
     hitScore = hitScore + 0.5f;
    }
    
    textSize(22);
    fill(0);
    textAlign(LEFT, CENTER);
    text("Hit Score: " + (int)hitScore, 50 , 100);
    
  }
  
  void drawFinalCombo(){
    if(finalCombo < gs.highestCombo){
     finalCombo = finalCombo + 0.5f;
    }
    
    textSize(22);
    fill(0);
    textAlign(LEFT, CENTER);
    text("Highest Combo: " + (int)finalCombo, 50, 130);
    
  }
  
  void drawFinalScore(){
    
    finalScore = hitScore * finalCombo;
    
    textSize(22);
    fill(0);
    textAlign(LEFT, CENTER);
    text("Final Score: " + (int)finalScore, 50, 160);
    
    if (finalScore > highScore) highScore = (int)finalScore;
    
  }
  
  void drawButtons(){

   imageMode(CENTER);
   image(loadImage("playAgainButton.png"), width/2 , 400);
   image(loadImage("quitButton.png"), width/2 , 480);
   
 }
 
 void mouseActions(){
  
  if (mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > 370 && mouseY < 430){
   screenCounter = 1;
   setup(); 
    
  }
  
  if (mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > 450 && mouseY < 510){
   screenCounter = 0; 
    
  }
  
 }
  
  
  
 
 
  
}
