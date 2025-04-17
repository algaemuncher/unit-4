int a = 0;
int b = 0;
int i = 0;

void setup(){
  size(600,600);
  background(125);
  while (i<30){
    particles(random(100,500),random(100,500));
    i = i+1;
  }
}

void particles(float x, float y){
  pushMatrix();
  translate(x,y);
  noStroke();
  fill(255,random(50,200));
  circle(random(-30,30),random(30,30),random(10,50));
  stroke(255,random(50,200));
  line(0,0,0,height);
  popMatrix();
}
