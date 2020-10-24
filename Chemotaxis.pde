Walker [] tony;
void setup()
{
  size(400,400);
  tony = new Walker[50];
  for (int i =0; i < tony.length; i++)
  {
    tony[i] = new Walker();
  }
} void draw()
{ background(0,255,40);
  for (int i =0; i < tony.length; i++)
  {
    tony[i].show();
    tony[i].walk();
  }
} class Walker
{ 
  int myX, myY, mycolor;
 
  {
  myX = 200;
  myY = 200;
  myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void move()
  {
    myX = myX +(int)(Math.random()*3)-1;
    myY = myY +(int)(Math.random()*3)-1;
  }
  void show()
  {
    fill(myColor);
    ellipse(myX,myY,20,20);
  }
}
  
