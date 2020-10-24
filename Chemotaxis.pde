Walker[] tony= new Walker[25];
 
 void setup()
 {
   size(400,400);
   for(int i=0; i<25; i++){
    tony[i]=new Walker(200,200);
    frameRate(16);
  }


 }
 void draw()
 {


  for(int j=0; j<1; j++){
    background(0,255,40);
    for(int i=0; i<25; i++){
    tony[i].move();
    tony[i].show();
  }


  }
 }

 
 class Walker
 {
   int myX, myY, myColor, mySize;

   Walker(int x, int y)
   {
     myX=x;
     myY=y;
     myColor=color((int)(Math.random()256),(int)(Math.random()256),(int)(Math.random()*256));
     mySize=(int)(Math.random()20)+5;
   }

   void move()
   {
     myX+=(int)(Math.random()*3)+1;
     myY+=(int)(Math.random()*3)+1;
   }

   void show()
   {
     fill(myColor);
     ellipse(myX,myY,mySize,mySize);
   }


 }
  
