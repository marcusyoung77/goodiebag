int x=0;

void setup()
{
  size(600,600);
  background(125,125,125);
  
}

void draw()
{
 background(125,125,125);

 if (x < width)
  {
  x = x + 1;
  }
  
  fill(50);
  stroke(255);
  ellipse(x,300,50,50);

}
