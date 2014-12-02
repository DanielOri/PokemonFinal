class GameStart {
 
 Pokemons pk = new Pokemons();
 ArrayList<YarnBall> yb = new ArrayList<YarnBall>(); 
  
 int routineTimer = 15;
 int startTime = 0;
 int countDownStartTime = 0;
 
  int yarnDelay = 1000;
 float gravity = 0;
 color yarnColor;
 int ballFrequency = 100;
 
 boolean gameLoaded = false;
 boolean counterStarted = false;
 boolean timerStarted = false;
 boolean gameStarted = false;
 boolean gameEnded = false;
  
 int score = 0;
 int combo = 0;
 int highestCombo = 0;
 
 void runGame(){
   
   println(highestCombo);
   
 if (!gameLoaded) {
    
       countDownStartTime = millis();
       counterStarted = true;
       gameLoaded = true;
   
     }  
   
   if (counterStarted){
     
     if(countDown() < 0 ){
      counterStarted = false;
      timerStarted = true;
     }
     drawCountDown();     
     
   }
   
   if (timerStarted){
    startTime = millis();
    timerStarted = false;
    gameStarted = true; 
   }
   
   
   if (gameStarted && !gameEnded){
     pk.drawColliders();
     pk.drawPokemon();
     pk.verifyHover();
     difficultyManager();
     updateYarnBalls();
     drawScore();
     drawTimer();
     drawCombo();
   }
   
   if (currentTime() < 0 && gameStarted){
     
     gameEnded = true;
     
     //if (highScore < score) highScore = score;
     if(combo > highestCombo) highestCombo = combo;
     screenCounter = 2;
     setup();
   }
   
 }
 
  void drawScore(){
    textSize(22);
    fill(0);
    textAlign(CENTER, CENTER);
    text(score, 30, height/2);
  }
  
  void drawTimer(){
    textSize(22);
    fill(0);
    textAlign(CENTER, CENTER);
    text((int)currentTime(), width/2, height/10);
  }
  
  void drawCombo(){
   
    textSize(22);
    fill(0);
    textAlign(CENTER, CENTER);
    text(combo+"X", width - 30, height/2);
    
  }
 
 void updateYarnBalls(){
  if (frameCount % ballFrequency == 0){
    yb.add(new YarnBall());
  }
  
  for (int i= yb.size()-1; i>=0; i--) {
    YarnBall y = yb.get(i);
    y.updateYarnBall(gravity, yarnColor);
    
    if (y.posY > height - 20 && y.valid){
     y.valid = false;
     if(combo > highestCombo) highestCombo = combo;
     combo = 0;
      
    }
    
  }
  
 }
 
 void drawCountDown(){
  
    textSize(50);
    fill(0);
    textAlign(CENTER, CENTER);
    
    if (countDown() > 0){
      text(countDown(), width/2, height/2);
    } else {
      text("GO!", width/2, height/2);
    }
      
 }
 
 int countDown(){
   
    return (int)(4 - (millis() - countDownStartTime)/1000.0f);
   
 }

 float currentTime(){
   
   return (float)((routineTimer + 1) - (millis() - startTime)/1000.0f);
 
 }
 
 void difficultyManager(){
  
  if (currentTime() < 250 && currentTime() >= 180) {
    gravity = 0.1f;
    ballFrequency = 60;
    yarnColor = color(0, 255, 0);
    
  } else if (currentTime() < 179 && currentTime() >= 110){
   gravity = 0.2f;
   ballFrequency = 55;
   yarnColor = color(255, 255, 0);
  } else if (currentTime() < 109 && currentTime() >= 40){
    gravity = 0.3f;
    ballFrequency = 50;
    yarnColor = color(255, 165, 0);
  } else if (currentTime() < 39){
    gravity = 0.4f;
    ballFrequency = 45;
    yarnColor = color(2550, 0, 0);
  }
   
 }

 void mouseActions(){
      
   for (int i= yb.size()-1; i>=0; i--) {
     YarnBall y = yb.get(i);
     
   if (y.verifyHover() && pk.touchingInRed && y.valid){
      y.fallSpeed *= -2;
      y.gravity *= -1;
      score = score + 3;
      combo++;
      y.valid = false;
      
      println("super point");
    } else  if (y.verifyHover() && pk.touchingInBlue && y.valid){
      y.fallSpeed *= -2;
      y.gravity *= -1;
      score = score + 1;
      combo++;
      y.valid = false;
      println("normal point");
    }
   
 }
 
 }
 
}
