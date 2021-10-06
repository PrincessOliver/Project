class creatures {

  float posX = 0; // Positioning X
  float posY = random(0,0); // Positioning Y
  float velX,velY; //Velocity
  float maxSpeed;
  


  //Spawn
  creatures() {
    posX= 0;
    posY = random(0,height);
    maxSpeed = 10;
    velX = maxSpeed;
  }

  void display() {
    ellipse(posX, posY, 20, 20);
    fill (255, 0, 0);
    loop();
  }
  
  
void move() {
    posX = posX + velX;
    posY = posY + velY;
  
  }
}
