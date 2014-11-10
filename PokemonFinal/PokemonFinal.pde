// Pokémon X/Y's "Head It" mini-game version on Processing
// Search for Minims (or something like that) for putting audio clips
// Look for documentation about millis function

int screenCounter = 1;

GameStart gs = new GameStart();

void setup (){
  
  gs.setPokes();
  
  size(450, 600);
  

 
}

void draw(){
  
  background(100, 100, 255);
  screenManager();
  
}

void screenManager(){
  
  if (screenCounter == 0){
    //mainMenuScreen();
  } else if(screenCounter == 1){
    startGame();
  } else if (screenCounter == 2){
    //resultScreen();
  }
  
}

void startGame() {
 gs.loadPokes();
 
}
