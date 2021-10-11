int state =0;

ArrayList<food> foodList = new ArrayList <food>(); //Creates an arrayList of all the food
ArrayList <creatures> creaturesList = new ArrayList <creatures>();
creatures creatures1;
food food1;

void setup() {
  size(1000, 1000);
   background(0);
  frameRate(60);
  creatures1 = new creatures();
}

void draw() {

  if (state == 0) {
    makeFood();
  }
  if (state == 5) {
    makeCreatures();
  }
  if (state == 10) {
    activeGame();
  }
  if (state ==15) {
    activeGameTwo();
    //noLoop();
  }
}


void makeFood() { //Puts food into the array, according to i<number
  foodList.clear();
  for (int i = 0; i<50; i++) {
    foodList.add(new food());
    state = 5;
  }
}

void makeCreatures() { //Puts food into the array, according to i<number
  creaturesList.clear();
  for (int i = 0; i<50; i++) {
    creaturesList.add(new creatures());
    state = 10;
  }
}



void activeGame() {
  for (int i = 0; i< foodList.size(); i++) {
    food a = foodList.get(i);
    a.display(); //Calls the class food, to create the object
    state =15;
  }
}
void activeGameTwo() {
  for (int i =0; i< creaturesList.size(); i++) {
    creatures b = creaturesList.get(i);
    b.move();
    b.display();
    
    
  }
  creatures1.isColliding=false;
  for(int i = 0; i< foodList.size();i++){
    food a =foodList.get(i);
    float distanceToFood = dist(a.posX,a.posY,creatures1.posX,creatures1.posY);
    if (distanceToFood < (a.diameter/2 + creatures1.size/2)){
      creatures1.isColliding =true;
        if(creatures1.isColliding){
          if (creatures1.size > a.diameter){
            creatures1.size = creatures1.size +100;
            foodList.remove(i);
          }
        }
    }
  }
  
}
