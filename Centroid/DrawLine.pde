
class Vector4
{
  float w,x,y,z;
  Vector4(float w, float x, float y, float z)
  {
    this.w = w;
    this.x = x;
    this.y = y;
    this.z = z;
  }
  
}

void DrawLine(Vector4... line)
{
  for(int i = 0; i < line.length; i++)
  {
    line(line[i].w, line[i].x, line[i].y, line[i].z);
  }
}

boolean hasClicked;

void drag()
{
  for(int i = 0; i < pointList.length - 4; i++)
  {
    if(pointList[i].inRange() && hasClicked)
    {
      pointList[i].position = new PVector(mouseX, mouseY);
    }
  }
}

void mouseDragged()
{
  hasClicked = true;
}

void mouseReleased()
{
  hasClicked = false;
}
