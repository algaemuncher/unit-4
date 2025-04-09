PImage doors;

void setup() {
  size(600, 600);
  background(142);
  doors = loadImage("dohr.png");
}

void draw() {
  house(300,300);
}

void house(int x, int y) {
  pushMatrix();
  translate(x,y);
  door(-68,45);
  
  coordinates(-275,-250);
  popMatrix();
}

void door(int x, int y){
  image(doors,x,y,125,125);
}

void coordinates(int x, int y){
  textSize(40);
  fill(230);
  noStroke();
  rect(x,y-30,200,40);
  fill(0);
  strokeWeight(3);
  text("x: " + mouseX + "y; " + mouseY, x,y);
}
