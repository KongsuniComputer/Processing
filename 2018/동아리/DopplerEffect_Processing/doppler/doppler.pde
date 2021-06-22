float vWave = 10;
float vSource = 20 ; // put value
float t = 0;

int i;

void setup(){
  size(800,400);
}

void draw(){
  for(i = 0; i < t; i++){  // A = t
  ellipse(width/2 + (vSource*i), height/2, ((t - i)*vWave*2), ((t - i)*vWave*2)); 
  // B = (vSource*i), C = (t - i)*vWave*2 
  }

  t++;
  delay(100);

}
