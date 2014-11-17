class Pokemons{
  
  boolean touchingInBlue, touchingInRed;
  
  void drawPokemon(){
    
    imageMode(CENTER);
    image(loadImage("dratini.png"), 100, 540);
    image(loadImage("eevee.png"), 200, 540);
    image(loadImage("luxio.png"), 300, 540);
    
  }
  
  void drawColliders(){
    
    rectMode(CENTER);
    fill(0, 0, 255);
    rect(100, 540, 70, 70);
    rect(200, 540, 70, 70);
    rect(300, 540, 70, 70);
    
    fill(255, 0, 0);
    rect(100, 540, 30, 30);
    rect(200, 540, 30, 30);
    rect(300, 540, 30, 30);
    
  }
  
  void verifyHover(){
    
    if (mouseX > 85 && mouseX < 315 && mouseY > 525 && mouseY < 555){
      
      touchingInBlue = false;
      touchingInRed = true;
      //println("Red!");
      
    } else if (mouseX > 65 && mouseX < 335 && mouseY > 505 && mouseY < 575){
      
      touchingInRed = false;
      touchingInBlue = true;
     // println("Blue!");
      
    } else{
      
      touchingInBlue = false;
      touchingInRed = false;
      //println("No hover!");
      
    }
    
  }
  
  
  
}
