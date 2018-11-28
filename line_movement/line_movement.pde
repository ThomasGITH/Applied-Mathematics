
Point A, B, C;

lineDraw line = new lineDraw(1,1);

PVector movement;
boolean right;

void setup()
{
  size(800,800);
  A = new Point(150,250, 30);
  B = new Point(650,550, 30);
  C = new Point(450, 350, 30);
  C.isBlue = true;
  
  movement = new PVector();
}

void draw()
{
  background(255);
    
  line.defineLine(A.position, B.position);
  line.display();
  
  if(C.position.x > B.position.x)
  {
    right = !right;
  }
  else if (C.position.x < A.position.x)
  {
    right = !right;
  }
  
  float prevYPos = C.position.y;
  C.velocity.x = right ? 5.0f : -5.0f;
  C.position.y = line.calcY(C.position.x);
  float yVel = prevYPos - C.position.y;
  
  C.updateMovement();  
  
  A.display();
  B.display();
  C.display();
  
PVector balVel = new PVector(C.velocity.x, -yVel);
balVel.mult(5.5f);
  
beginShape();
translate(C.position.x, C.position.y);
strokeWeight(8);
stroke(255,0,0,255);
line(0, 0, balVel.x, balVel.y);
endShape();
}
