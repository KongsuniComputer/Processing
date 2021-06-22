int circleX = 100;
int circleY = 100;

void setup(){
  size(200,200);
}

void draw(){
  background(255);
  fill(210, 50, 20);
  ellipse(circleX, circleY, 50, 50);
  circleX++;
}