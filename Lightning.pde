int startX = 175;
int startY = 600;
int endX = width;
int endY = 0;

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
}

void mousePressed() {
	startX = 175;
	startY = 600;
	endX = width;
	endY = 0;
}

void hammer() {
	translate(150, 550);
	rotate(0.785);
	noStroke();
	fill(117, 82, 7);
	ellipse(50, 75, 15, 125);
	strokeWeight(2);
	stroke(255, 255, ((int)(Math.random()*150)+100));
	fill(200);
	rect(0, 0, 100, 40);
}

void bg(){
	fill(3, 18, 61, 20);
	noStroke();
	rect(0, 0, width, height);
}

void clouds(){
	ellipse(400, 50, 50, 50);
}