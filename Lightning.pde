int startX = 175;
int startY = 600;
int endX = width;
int endY = 0;
int cloudColor = (int)(Math.random()*70+60);

void setup() {
  size(600,750);
  fill(0);
  background(3, 18, 61);
}

void draw() {
  bg();
  strokeWeight((int)(Math.random()*3)+1);
  stroke(((int)(Math.random()*10)+245), ((int)(Math.random()*10)+245), ((int)(Math.random()*150)+100), ((int)(Math.random()*55)+200));

  while(endY >= 0){
    endX = startX + ((int)(Math.random()*13)-3);
    endY = startY - ((int)(Math.random()*15));
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  hammer();
  clouds();
}

void mousePressed() {
  cloudColor = (int)(Math.random()*70+60);
  startX = 175;
  startY = 600;
  endX = width;
  endY = 0;
}

void hammer() {
  pushMatrix();
  translate(150, 550);
  rotate(0.785);
  noStroke();
  fill(117, 82, 7);
  ellipse(50, 75, 15, 125);
  strokeWeight(2);
  stroke(255, 255, ((int)(Math.random()*150)+100));
  fill(200);
  rect(0, 0, 100, 40,7);
  popMatrix();
}

void bg(){
  fill(3, 18, 61, 35);
  noStroke();
  rect(0, 0, width, height);
}

void clouds(){
  fill(cloudColor, cloudColor, cloudColor);
  noStroke();
  
  ellipse(width/2, 50, width, 70);
  
  // bottom fluff
  ellipse(28, 60, 60, 40);
  ellipse(60, 80, 50, 50);
  ellipse(106, 95, 70, 50);
  ellipse(150, 85, 65, 50);
  ellipse(200, 90, 75, 70);
  ellipse(260, 100, 90, 80);
  ellipse(320, 90, 70, 60);
  ellipse(370, 90, 70, 60);
  ellipse(420, 100, 80, 60);
  ellipse(470, 75, 60, 60);
  ellipse(515, 70, 75, 50);
  ellipse(570, 60, 70, 40);
  
  // top fluff
  ellipse(28, 40, 60, 40);
  ellipse(70, 20, 70, 50);
  ellipse(width/2, 20, 475, 80);
  
  //dark inside fluff
  fill(cloudColor-5, cloudColor-5, cloudColor-5);
  ellipse(60, 50, 70, 35);
  ellipse(105, 60, 75, 45);
  ellipse(160, 65, 70, 35);
  ellipse(250, 70, 135, 50);
  ellipse(350, 65, 100, 35);
  ellipse(430, 60, 100, 35);
  ellipse(490, 50, 80, 30);
  ellipse(105, 35, 75, 45);
  ellipse(180, 35, 120, 55);
  ellipse(250, 40, 60, 45);
  ellipse(330, 35, 150, 60);
  ellipse(420, 40, 100, 45);
}