public void setup()
{
 size(500, 500);
 background(200, 170, 200);

}
public void draw()
{
  sierpinski(0, 500, 500);

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
    if(len <= 20) {
    //triangle((float)x+len/2, len, (float)x, (float)y, (float)x + len, (float)y);
    triangle(x, y, x+ len, y, x+len/2, y-len*sin(PI/3));
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }

}
