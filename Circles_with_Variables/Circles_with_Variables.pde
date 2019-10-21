int r=0;
int g=0;
int b=0;
float x=0;
float y=0;

void setup()
{
  size(623, 700);
}

void draw()
{
   background(r,g,b);
 
 x=0;
 while (x < width)
 {
   if (mouseX < 1)
   {  x = x + 1;
   }
   else
   {
     x = x + mouseX;
   }
   fill(101);
   stroke(255);
   ellipse(x, 150, 16, 16);
   
 }
}
