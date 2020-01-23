public void setup()
{
  background(0);
  size(800, 800);
}
public void draw()
{
  sierpinski(0, 800, 800);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 30){
    fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
    triangle(x, y, x + len/2, y - len, x + len, y);
  }else{
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
