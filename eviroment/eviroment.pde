int state =0;

ArrayList<food> foodList = new ArrayList <food>(); //Creates an arrayList of all the food
ArrayList <creatures> creaturesList = new ArrayList <creatures>();

void setup() {
  size(500, 500);
}

void draw() {
  makeFood();
  activeGame();
  noLoop();
}




void makeFood() { //Puts food into the array, according to i<number
  foodList.clear();
  for (int i = 0; i<50; i++) {
    foodList.add(new food());
  }
  for (int i = 0; i< 25; i++) {
    creaturesList.add(new creatures());
  }
}


void activeGame() {
  for (int i = 0; i< foodList.size(); i++) {
    food a = foodList.get(i);
    a.display(); //Calls the class food, to create the object
    noLoop(); // So the method wont get called over and over by draw()
  }
    for (int i =0; i< creaturesList.size(); i++) {
    creatures b = creaturesList.get(i);
    b.display();
    b.move();
  
  }
}
