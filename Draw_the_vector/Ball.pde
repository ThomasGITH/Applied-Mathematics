
class Ball
{
  PVector position, velocity, acceleration;
  float radius;
  
  Ball(float x, float y, float radius)
  {
    position = new PVector(x,y);
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
  
  void checkBoundaries()
  {
    if(position.y > height || position.y < 0)
    {
      velocity.y *= -1;
    }
    
    if(position.x > width || position.x < 0)
    {
      velocity.x *= -1;
    }
  }
  
  void display()
  {
    checkBoundaries();
    updateMovement();
    stroke(0);
    strokeWeight(1);
    fill(0,0,255,127.5);
    ellipse(position.x, position.y, radius, radius);
  }

}
