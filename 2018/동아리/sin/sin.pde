void setup()
{
  size(600, 600);
  background(255); 
  
}

void draw()
{
  int i;
  float a = 0.0;
  float inc = TWO_PI/25.0;
  
  for (i = 0; i < 10000; i=i+4)
  {
    line(i, 300, i, 300+sin(a)*40.0);
    a = a + inc;
  }
}