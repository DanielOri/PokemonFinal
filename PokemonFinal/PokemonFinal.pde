// Pokémon X/Y's "Head It" mini-game version on Processing
// Search for Minims (or something like that) for putting audio clips
// Look for documentation about millis function

int screenCounter = 0;
int highScore = 0;

boolean runningGame = false;

MainMenu mm = new MainMenu();
GameStart gs;// = new GameStart();
ResultScreen rs;// = new ResultScreen();

void setup (){
   
  size(400, 600);
  
  if (screenCounter == 1) gs = new GameStart();
  if (screenCounter == 2) rs = new ResultScreen();
    
}

void draw(){
  
  background(163, 231, 255);
  screenManager();
  
}

void screenManager(){
  
  if (screenCounter == 0){
    
    mm.runMainMenu();
    
  } else if(screenCounter == 1){
    
    if (!runningGame){
   
     runningGame = true;
    }
    
    gs.runGame();
    
  } else if (screenCounter == 2){
    
    rs.runResultScreen();
    
  }
  
}

void mousePressed(){
  
  if (screenCounter == 0){
    
    mm.mouseActions();
    
  }
  
  if (screenCounter == 1){

    gs.mouseActions();
    
  }
  
  if (screenCounter == 2){
   
    rs.mouseActions();
    
  }
  
}
