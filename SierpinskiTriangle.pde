int counter = 0;

public void setup()
{
 size(500, 500);
 background(0);
 stroke(255, 255, 255);
 strokeWeight(1);

}
public void draw()
{
  sierpinski(0, 500, 500);

}
public void mouseClicked()//optional
{
  counter++;
}
public void sierpinski(int x, int y, int len) 
{
    if(len <= 20) {
    //triangle((float)x+len/2, len, (float)x, (float)y, (float)x + len, (float)y);
      if(counter % 2 != 0) {
        fill(150, 125, 200);
      } else {
        fill(0, 255, 0); 
      } 
      triangle(x, y, x+ len, y, x+len/2, y-len*sin(PI/3));
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }

}


