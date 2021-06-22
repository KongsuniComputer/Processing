float SunDiam = 80;

float MercuryDiam = 2;
float MercuryOrbitRadius = 80;
float MercuryAngle = 0;

float VenusDiam = 5;
float VenusOrbitRadius = 110;
float VenusAngle = 0;

float EarthDiam = 18;
float EarthOrbitRadius = 150;
float EarthAngle = 0;

float MarDiam = 11;
float MarOrbitRadius = 190;
float MarAngle = 0;

float JupiterDiam = 35;
float JupiterOrbitRadius = 270;
float JupiterAngle = 0;

void setup() {
  size(1024,768);
  
  frameRate(100);
}

void draw() {
  //background(0,0,0);   
  translate(width/2,height/2);  
  noStroke();
  
  fill(255,200,64);            
  ellipse(0,0,SunDiam,SunDiam); 
  
  pushMatrix();
  rotate(MercuryAngle);
  translate(MercuryOrbitRadius, 0);
  fill(122,122,122);                   
  ellipse(0,0,MercuryDiam,MercuryDiam); 
  popMatrix();
   
  pushMatrix();
  rotate(VenusAngle);
  translate(VenusOrbitRadius,0);
  fill(155,135,95);
  ellipse(0,0,VenusDiam,VenusDiam);
  popMatrix();
  
  pushMatrix();
  rotate(EarthAngle);
  translate(EarthOrbitRadius, 0);
  fill(64,64,255);                   
  ellipse(0,0,EarthDiam,EarthDiam); 
  popMatrix();

  pushMatrix();
  rotate(MarAngle);
  translate(MarOrbitRadius, 0);
  fill(240,10,10);                   
  ellipse(0,0,MarDiam,MarDiam); 
  popMatrix();
  
  pushMatrix();
  rotate(JupiterAngle);
  translate(JupiterOrbitRadius, 0);
  fill(101,67,33);                   
  ellipse(0,0,JupiterDiam,JupiterDiam); 
  popMatrix();
  
  MercuryAngle += 0.01;
  VenusAngle += 0.008;
  EarthAngle += 0.006;
  MarAngle += 0.004;
  JupiterAngle += 0.002;

}