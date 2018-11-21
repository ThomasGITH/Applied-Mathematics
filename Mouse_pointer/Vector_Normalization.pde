
void setup()
{
  size(800,800);
}

void draw()
{
  background(255);
  PVector mouse = new PVector(mouseX,mouseY);
  PVector center = new PVector(width/2,height/2);
  
  //Bereken aftand tussen het middelpunt & de muis
  mouse.sub(center);
  
  //Normalize mouse naar een lengte/magnitude van 1
  mouse.normalize();
  
  //Scale de vector om de lijn/pijl te kunnen zien
  mouse.mult(50);
  
  //Apply de transformaties
  translate(width/2, height/2);
  line(0, 0, mouse.x, mouse.y);
}
