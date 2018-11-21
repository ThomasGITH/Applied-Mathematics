
Ball ball;

PVector force_of_gravity;
PVector wind;

void setup()
{
  size(800,800);
  ball = new Ball(20, width/2, 30);
  
  force_of_gravity = new PVector(0,0.3,0);
  wind = new PVector(0.05, 0 , 0);
}

void draw()
{
  background(255,255,255);  
  
  ball.acceleration.add(force_of_gravity);
  ball.acceleration.add(wind);
  
  PVector vel = ball.velocity.copy();
  vel.mult(4);
  
ball.display();
  
    
translate(ball.position.x, ball.position.y);
strokeWeight(5);
stroke(255,0,0,255);
line(0, 0, vel.x, vel.y);
}
