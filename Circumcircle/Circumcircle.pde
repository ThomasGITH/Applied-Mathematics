Point A, B, C;
LineDraw sideLineOne, sideLineTwo, sideLineThree;
LineDraw bisectorOne, bisectorTwo, bisectorThree;

PVector circumCenter;

void setup()
{
  size(800,800);
  A = new Point(300, 260, 20);
  B = new Point(150,230, 20);
  C = new Point(200, 360, 20);
  
  sideLineOne = new LineDraw(1,1);
  sideLineTwo = new LineDraw(1,1);
  sideLineThree = new LineDraw(1,1);
  
  bisectorOne = new LineDraw(1,1, color(0,0,127.5));
  bisectorTwo = new LineDraw(1,1, color(0,0,127.5));
  bisectorThree = new LineDraw(1,1, color(0,0,127.5));
}

void draw()
{
  background(255);
  
  A.position = new PVector(mouseX, mouseY);
  
  sideLineOne.defineLine(A.position, B.position);
  sideLineTwo.defineLine(C.position, A.position);
  sideLineThree.defineLine(B.position, C.position);
  
  PVector AB = new PVector((A.position.x + B.position.x) / 2, (A.position.y + B.position.y) / 2);
  bisectorOne.slope = -1/sideLineOne.slope;
  bisectorOne.intercept = AB.y - bisectorOne.slope*AB.x;
  
  PVector AC = new PVector((A.position.x + C.position.x) / 2, (A.position.y + C.position.y) / 2);
  bisectorTwo.slope = -1/sideLineTwo.slope;
  bisectorTwo.intercept = AC.y - bisectorTwo.slope*AC.x;
  
  PVector BC = new PVector((B.position.x + C.position.x) / 2, (B.position.y + C.position.y) / 2);
  bisectorThree.slope = -1/sideLineThree.slope;
  bisectorThree.intercept = BC.y - bisectorThree.slope*BC.x;
  
  circumCenter = bisectorTwo.intersection(bisectorThree);
  fill(0,255,0);
  ellipse(circumCenter.x, circumCenter.y, 20,20);
  
  PVector distanceVector = new PVector(circumCenter.x - A.position.x, circumCenter.y - A.position.y);
  float radius = distanceVector.mag() * 2;
  
  fill(0,0);
  stroke(255,0,0);
  ellipse(circumCenter.x, circumCenter.y, radius, radius);
  
  A.display();
  B.display();
  C.display();
  
  sideLineOne.display();
  sideLineTwo.display();
  sideLineThree.display();
  
  bisectorOne.display();
  bisectorTwo.display();
  bisectorThree.display();
}
