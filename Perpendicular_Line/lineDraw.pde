
class lineDraw
{
  public float slope, intercept;
  
  public lineDraw(float slope, float intercept)
  {
    this.slope = slope;
    this.intercept = intercept;
  }
  
  void defineLine(PVector A, PVector B)
  {
     slope = (B.y - A.y) / (B.x - A.x);
    intercept = A.y - (slope * A.x);
  }
  
  float calcY(float x)
  {
    return slope * x + intercept;
  }
  
  void display()
  {
    line(0,calcY(0), width,calcY(width));
  }

}
