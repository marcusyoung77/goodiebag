float circleX;
float xspeed = 2;

void setup()
{
  size(650, 350);
  circleX=0;
}

void draw()
{
  background(50);
  fill(100);
  stroke(255);
  ellipse(circleX,height/2, 32, 32);
  circleX = circleX + xspeed;
  
  //if (circleX >= width)
  //{
  //  xspeed = -5;
  //}
  
  //if (circleX <= 0)
  //{
  //  xspeed = 2;
  //}
    //if (circleX >= width || circleX <= 0)
    //{
    //  xspeed = xspeed * -1;
    //}
}
