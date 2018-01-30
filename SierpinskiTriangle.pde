int basecase = 300;
public void setup()
{
  size(600,600);
  background(0);
}
public void draw()
{
  background(0);
  sierpinski(0,600,600);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if (len<=basecase)
  {
    triangle(x,y,x+len,y,x+len/2,y-len);
  }
  else
  {
    //fill((int)(Math.random()*245+10),(int)(Math.random()*245+10),(int)(Math.random()*245+10));
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}

//if (mousePresed == true)
//if (mouseButton == RIGHT)

public void mouseClicked()
{
  if (mouseButton == LEFT)
  {
    if (basecase>50)
      basecase = basecase-50;
  }
  if (mouseButton == RIGHT)
  {
    if (basecase<550)
      basecase = basecase+50;
  }
}