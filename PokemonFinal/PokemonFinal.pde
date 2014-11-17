// Pokémon X/Y's "Head It" mini-game version on Processing
// Search for Minims (or something like that) for putting audio clips
// Look for documentation about millis function

int screenCounter = 0;
int highScore = 0;

MainMenu mm = new MainMenu();
GameStart gs = new GameStart();

void setup (){
   
  size(400, 600);
  
  //if (screenCounter == 1) gs.createYawnBalls();
    
}

void draw(){
  
  background(163, 231, 255);
  screenManager();
  
}

void screenManager(){
  
  if (screenCounter == 0){
    mm.runMainMenu();
  } else if(screenCounter == 1){
    gs.runGameStart();
  } else if (screenCounter == 2){
    //resultScreen();
  }
  
}

void mousePressed(){
  
  if (screenCounter == 0){
    mm.mouseActions();
  }
  
}
