

Point A, B, C;
lineDraw line, crossingLine;

void setup()
{
  size(800,800);
  A = new Point(300, 260, 20);
  B = new Point(150,230, 20);
  C = new Point(200, 360, 20);
  
  
  line = new lineDraw(1,1);
  crossingLine = new lineDraw(1,1);
}

void draw()
{
  background(255);
  
   A.position = new PVector(mouseX, mouseY);
  
  line.defineLine(A.position, B.position);
  line.display();

  crossingLine.slope = -1/line.slope;
  crossingLine.intercept = C.position.y - crossingLine.slope*C.position.x;
  crossingLine.display();
  
  A.display();
  B.display();
  C.display();
  
}
