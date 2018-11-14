Point A, B, C;
LineDraw sideLineOne, sideLineTwo, sideLineThree;
LineDraw altitudeOne, altitudeTwo, altitudeThree;

PVector orthoCenter;

void setup()
{
  size(800,800);
  A = new Point(300, 260, 20);
  B = new Point(150,230, 20);
  C = new Point(200, 360, 20);
  
  sideLineOne = new LineDraw(1,1, color(0));
  sideLineTwo = new LineDraw(1,1, color(0));
  sideLineThree = new LineDraw(1,1, color(0));
  
  altitudeOne = new LineDraw(1,1, color(0,0,127.5));
  altitudeTwo = new LineDraw(1,1, color(0,0,127.5));
  altitudeThree = new LineDraw(1,1, color(0,0,127.5));
}

void draw()
{
  background(255);
  
  A.position = new PVector(mouseX, mouseY);
  
  sideLineOne.defineLine(A.position, B.position);
  sideLineTwo.defineLine(C.position, A.position);
  sideLineThree.defineLine(B.position, C.position);
  
  altitudeOne.slope = -1/sideLineOne.slope;
  altitudeOne.intercept = C.position.y - altitudeOne.slope*C.position.x;
  
  altitudeTwo.slope = -1/sideLineTwo.slope;
  altitudeTwo.intercept = B.position.y - altitudeTwo.slope*B.position.x;
  
  altitudeThree.slope = -1/sideLineThree.slope;
  altitudeThree.intercept = A.position.y - altitudeThree.slope*A.position.x;
  
  orthoCenter = altitudeTwo.intersection(altitudeThree);
  
  fill(255,0,0);
  ellipse(orthoCenter.x, orthoCenter.y, 20,20);
  
  A.display();
  B.display();
  C.display();
  
  sideLineOne.display();
  sideLineTwo.display();
  sideLineThree.display();
  
  altitudeOne.display();
  altitudeTwo.display();
  altitudeThree.display();

  
}
