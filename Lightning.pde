int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup() {
  frameRate(10);
  size(600,750);
  fill(0);
  //background(#000000);
}

void draw() {
	strokeWeight((int)(Math.random()*3)+1);
	stroke(((int)(Math.random()*255)+1), ((int)(Math.random()*255)+1), ((int)(Math.random()*255)+1));

	while(endX <= width){
		endX = startX + ((int)(Math.random()*10));
		endY = startY + ((int)(Math.random()*19)-9);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
	hammer();
}

void mousePressed() {
	startX = 0;
	startY = 150;
	endX = 0;
	endY = 150;
}

void hammer() {
	translate(150, 550);
	rotate(0.785);
	noStroke();
	fill(117, 82, 7);
	ellipse(50, 75, 15, 125);
	strokeWeight(3);
	stroke(255, ((int)(Math.random()*255)+1), ((int)(Math.random()*255)+1));
	fill(200);
	rect(0, 0, 100, 40);
}