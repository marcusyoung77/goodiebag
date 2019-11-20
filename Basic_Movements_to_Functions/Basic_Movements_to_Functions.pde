float x=50;
float y=50;
float dx;
float dy;

void setup()

{
  //set size of canvas
  size (500,500);
  
  //set frame rate of sketch (relates to movement)
  frameRate(250);
}

void draw()
{ 
  // Fill background grey"ish"
  background (100,100,100);
 
 //outline of shape(s) in white
  stroke(255,255,255);
 
 //fill shape(s) 
  fill(15);
  
 //draw our little man  
  ellipse(x, y, 40, 40);
  ellipse (x-10, y-5, 8,8);
  ellipse (x+10, y-5, 8, 8);
  ellipse (x, y, 5, 5);
  
  
 // If I hit the LEFT arrow, go Left
  if(keyCode == LEFT)
  {
    dx = -1;
    dy = 0;
  }
  // if I hit the RIGHT arrow, go Right
  else if(keyCode == RIGHT)
  {
    dx = 1;
    dy = 0;
  }
  // if I hit the UP arrow, go Up
  if(keyCode == UP)
  {
    dy = -1;
    dx = 0;
  }
  // if I hit the DOWN arrow, go Down
  else if(keyCode == DOWN)
  {
    dy = 1;
    dx = 0;
  }
  // if I hit the Space Bar, Stop
  if(keyCode == ' ')
  {
    dx = 0;
    dy = 0;
  }
  
  // move x and y in the appropriate way
  x = x + dx;
  y = y + dy;
  
  // make sure we don't go out of bounds
  if(x < 0) x = 0;
  if(x > width) x = width;
  if(y < 0) y = 0;
  if(y > height) y = height;
}
