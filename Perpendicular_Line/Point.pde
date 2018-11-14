
class Point
{
  PVector position;
  float radius;
  
  public Point(float x, float y, float radius)
  {
    position = new PVector(x,y);
    this.radius = radius;
  }
  
  void display()
  {
    fill(0,0,1);
    stroke(0);
    ellipse(position.x, position.y, radius, radius);
  }
  
}
