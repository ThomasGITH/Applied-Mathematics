

class Point
{
  PVector position;
  PVector dimensions;
  
  Point(float x, float y, float size)
  {
    position = new PVector(x, y);
    dimensions = new PVector(size,size);
  }
  
  Point(PVector position, float size)
  {
    this.position = position;
    dimensions = new PVector(size,size);
  }
  
  void display()
  {
    fill(0);
    text("(" + round(position.x) + " " + round(position.y) + ")",position.x - 30, position.y - 25);
    beginShape();
    stroke(0);
    if(dimensions.x < 30)
    { fill(0,0,255);}
    else{ fill(255,0,0); }
    ellipse(position.x, position.y, dimensions.x, dimensions.y);
    endShape();
  }
  
  boolean inRange()
  {
    if(mouseX < position.x + (dimensions.x ) &&
        mouseX > position.x - (dimensions.x) &&
          mouseY > position.y - (dimensions.y) &&
            mouseX < position.y + (dimensions.y))
    {
      return true;
    }
    else
    {
      return false;
    }
  }
  
}
