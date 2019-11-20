float circleX;
float xspeed = 5;
float circleY;
float yspeed = 5;

void setup()
{
  size(650, 350);
  circleX=0;
  circleY=73;
}

void draw()
{
  background(50);
  fill(100);
  stroke(255);
  rect(circleX,circleY, 32, 32);
  circleX = circleX + xspeed;
  circleY = circleY + yspeed;
  
  //if (circleX >= width)
  //{
  //  xspeed = -15;
  //}
  
  //if (circleX <= 0)
  //{
  //  xspeed = 20;
  //}
    if (circleX >= width || circleX <= 0)
    {
      xspeed = xspeed * -1;   
    }
    if (circleY >= height || circleY <= 0)
    { 
      yspeed = yspeed * -1; 
    }
}
