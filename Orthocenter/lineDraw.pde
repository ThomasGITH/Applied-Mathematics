
class LineDraw
{
  public float slope, intercept;
  color lineColor;
  
  public LineDraw(float slope, float intercept, color lineColor)
  {
    this.slope = slope;
    this.intercept = intercept;
    this.lineColor = lineColor;
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
  
  boolean blueLine;
      
  void display()
  {
    stroke(lineColor);
    line(0,calcY(0), width,calcY(width));
  }
  
    PVector intersection(LineDraw m){
    PVector ans = new PVector(0,0);
    ans.x = (m.intercept - this.intercept)/(this.slope - m.slope);
    ans.y = this.calcY(ans.x);
    return ans;
  }

}
