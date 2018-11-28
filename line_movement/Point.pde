
class Point
{
  PVector position, velocity, acceleration;
  float radius;
  boolean isBlue;
  
  public Point(float x, float y, float radius)
  {
    position = new PVector(x, y);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    this.radius = radius;
  }
  
  void updateMovement()
  {
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
  }
  
  void display()
  {
    beginShape();
    if(!isBlue){ fill(255,0,0,255); }
    else { fill(0,0,255,255); }
    text("X: " + round(position.x) + " Y: " + round(position.y), position.x - 10, position.y - 20);
    ellipse(position.x, position.y , radius, radius);
    endShape();
  }
  
}
