class GameStart {
 
 Pokemons pk = new Pokemons();
 ArrayList<YawnBall> yb = new ArrayList<YawnBall>(); 
  
 int routineTimer;
 int yawnDelay = 1000;
 
 void runGameStart(){
   
   //pk.drawColliders();
   pk.drawPokemon();
   pk.verifyHover();
   spawnYawnBalls();
   
 }
 
 void spawnYawnBalls(){
  if (frameCount % 120 == 0){
    
    yb.add(new YawnBall());
    //println("new ball");
    
  }
  
  for (int i= yb.size()-1; i>=0; i--) {
    YawnBall y = yb.get(i);
    y.updateYawnBall();
  }
  
 } 
 
 
}
