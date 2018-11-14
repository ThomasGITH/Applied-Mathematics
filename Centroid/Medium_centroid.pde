
Point A, B, C, Center, AB, AC, BC;

PVector centerCoordinates;

Point[] pointList;

void setup()
{
  size(1040,1040);
    
  A = new Point(width/3, height/3, 30);
  B = new Point(width/3 + width/3, height/3, 30);
  C = new Point(width/2, height/3 + height/3, 30);
  
  AB = new Point((B.position.x + A.position.x) / 2, (B.position.y + A.position.y) / 2, 15);
  AC = new Point((C.position.x + A.position.x) / 2, (C.position.y + A.position.y) / 2, 15);  
  BC = new Point((C.position.x + B.position.x) / 2, (C.position.y + B.position.y) / 2, 15);
  
  centerCoordinates = new PVector((A.position.x + B.position.x + C.position.x) / 3, (A.position.y + B.position.y + C.position.y) / 3);  
  Center = new Point(centerCoordinates, 30);
  
  pointList = new Point[7];
  
  pointList[0] = A;
  pointList[1] = B;
  pointList[2] = C;
  
  pointList[3] = AB;
  pointList[4] = AC;
  pointList[5] = BC;
  pointList[6] = Center;
}

void draw()
{
  background(255);
  
  drag();
  
  AB.position = new PVector((B.position.x + A.position.x) / 2, (B.position.y + A.position.y) / 2, 15);
  AC.position = new PVector((C.position.x + A.position.x) / 2, (C.position.y + A.position.y) / 2, 15);
  BC.position = new PVector((C.position.x + B.position.x) / 2, (C.position.y + B.position.y) / 2, 15);

  centerCoordinates = new PVector((A.position.x + B.position.x + C.position.x) / 3, (A.position.y + B.position.y + C.position.y) / 3);  
  Center.position = centerCoordinates;
  strokeWeight(2.5f);
  DrawLine(new Vector4(A.position.x, A.position.y, B.position.x, B. position.y), 
  new Vector4(B.position.x, B. position.y, C.position.x, C.position.y), 
  new Vector4(C.position.x, C.position.y, A.position.x, A.position.y),
  new Vector4(AB.position.x, AB.position.y, C.position.x, C.position.y),
  new Vector4(AC.position.x, AC.position.y, B.position.x, B.position.y),
  new Vector4(BC.position.x, BC.position.y, A.position.x, A.position.y));

  for(int i = 0; i < pointList.length; i++)
  {
    pointList[i].display();
  }  
}
