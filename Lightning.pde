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
	ellipse(28, 60, 60, 40);
	ellipse(60, 80, 50, 50);
	ellipse(100, 90, 70, 50);
	ellipse(130, 85, 50, 50);
	ellipse(400, 90, 50, 50);
	ellipse(400, 90, 50, 50);
	ellipse(400, 90, 50, 50);
	ellipse(400, 90, 50, 50);
}
