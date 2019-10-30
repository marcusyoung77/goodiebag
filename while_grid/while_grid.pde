int r=0;
int g=0;
int b=0;
float x=0;
float y=0;

void setup()
{
  size(500, 500);
}

void draw()
{
  background(r, g, b);

  stroke(255);
  strokeWeight(2);

  x = 0;
  while (x < width)
  {
    line(x, 0, x, height);
    x = x + 25;
  }
  y = 0;
  while (y < height)
  {
    line(0, y, width, y);
    y = y + 25;
  }
}
