int i,j,x,y,r,cs1,cs2,cs3 = 0;
float f;
void setup(){
  size(600,600);
  background(200);
  rectMode(CENTER);
  car(300,300);
  //while(i<10){
  //  car(int(random(600)),int(random(600)));
  //  i = i+1;
  //}
  streetlight(150,400);
}

void car(int x, int y){
  pushMatrix();
  translate(x,y);
  
  scale(random(0.75,1.25));
  frame(0); //int(random(2))
  windows();
  tire(-25,10);
  tire(25,10);
  popMatrix();
}

void frame(int x){
  if (x==0){
    noStroke();
    cs1 = int(random(255));
    cs2 = int(random(255));
    cs3 = int(random(255));
    fill(cs1,cs2,cs3);
    r = int(random(15));
    rect(0,0,map(r,0,15,90,110),15);
    quad(-35-r,5,-15,-50,15,-50,35+r,5);
  } else if (x==1){
    
  } else if (x==2){
  
  }
}

void windows(){
  fill(151, 247, 244);
  quad(-35-r+20,-15,-12.5,-42.5,12.5,-42.5,35+r-20,-15);
  fill(cs1,cs2,cs3);
  rect(0,-28,map(r, 0,15,5,10),30);
}

void tire(int x, int y){
  noStroke();
  pushMatrix();
  translate(x,y);
  fill(75);
  circle(0,0,25);
  f=0;
  while (f<6.283){
    stroke(0);
    line(0,0,12*cos(f),12*sin(f));
    f= f+0.524;
  }
  fill(142);
  noStroke();
  circle(0,0,10);
  popMatrix();
}

void streetlight(int x, int y){
  pushMatrix();
  translate(x,y);
  sframe();
  lamp();
  blindinglights();
  popMatrix();
}

void sframe(){
  stroke(0);
  fill(83);
  rect(0,0,40,10);
  fill(177);
  rect(0,-70,8,130);
}

void lamp(){
  fill(115);
  rect(-20,-125,48,8);
}

void blindinglights(){
  fill(255,248,100,int(random(50,100)));
  noStroke();
  r = int(random(5));
  quad(-38,-120,-23,-120,-15+r,5,-58-r,5);
  i = 0;
  while(i<5){
   fill(255,248,100,int(random(140,165)));
   circle(random(-40,-20),random(-80,-40),random(5,9));
   i=i+1;
  }
}

void draw(){
  rectMode(CORNER);
  textSize(40);
  fill(230);
  noStroke();
  rect(0,0,200,40);
  fill(0);
  strokeWeight(3);
  int a = mouseX;
  int b = mouseY;
  text("x: " + a + "y; " + b, 0,30);
}
