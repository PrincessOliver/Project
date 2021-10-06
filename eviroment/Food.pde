class food {

  float posX = random(0,0);
  float posY = random(0,0);


  //Spawn
  food() {
    posX= random(0,height);
    posY = random(0,height);
    //diameter = random(5, 100);
    //maxSpeed = 5-0.1*diameter+1;
  }

  void display() {
    ellipse(posX, posY, 20, 20);
    noLoop();
  }
}
