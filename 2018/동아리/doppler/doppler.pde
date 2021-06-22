float vWave = ;
float vSource = ;
float t = 0;

int i;

void setup(){
  size(800,400);
}

void draw(){
  for(i = 0; i < t; i++){  // A = t ?
  ellipse(width/2+(vSource*t), height/2, width/2-(vWave*t), width/2-(vWave*t)); 
  // B = (vSource*t), C = width/2-(vWave*t) ?
  }

  t++;

  delay(100);

}