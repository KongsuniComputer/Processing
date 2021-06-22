float t1, t2, ex, ey, mx, my;

void setup()
{
  size(600, 600);
  background(255); 
  //frameRate(100);
}

void draw()
{
    fill(255);
    rect(0,0,600,600);
    
    fill(255,0,0);
    ellipse(300, 300, 100, 100);
    
    ex = 300 + 200*cos(t1);
    ey = 300 - 200*sin(t1);
    
    fill(0,20,200);
    ellipse(ex, ey, 25, 25);
    
    mx = ex + 20*cos(t2);
    my = ey - 20*sin(t2);
    
    fill(160);
    ellipse(mx, my, 5,5);
    
    t1 = t1 + TWO_PI/360;
    
    t2 = t2 + TWO_PI/60;
    
     
  }
    
  