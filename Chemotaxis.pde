Walker [] tony = new Walker[50];;
void setup()
{
  size(400,400);
  tony[i] = new Walker(200,200);
  for (int i = 0; i < tony.length; i++)
  {
    tony[i] = new Walker();
  }
} void draw()
{ 
  for (int j =0; j < tony.length; j++)
  {
    background(0,255,40);
    tony[j].show();
    tony[j].walk();
  }
} class Walker
{ 
  int myX, myY, myColor;
  {
  myX = 200;
  myY = 200;
  myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void walk()
  {
    myX = myX + (int)(Math.random()*3)-1;
    myY = myY + (int)(Math.random()*3)-1;
  }
  void show()
  {
    fill(myColor);
    ellipse(myX,myY,20,20);
  }
}
  
