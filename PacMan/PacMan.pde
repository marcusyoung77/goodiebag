public abstract class Item 
{
  public void pacEatsDots();
 
}
 
public class Pacman extends Item
{
  int x;
  int y;
  int radius = 15;
  int direction = 1;
  int direction2 = 0;
 
  public Pacman(int xn, int yn)
  {
    x = xn;
    y = yn;
  }
 
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      x = x - 5;
      direction = -1;
      direction2 = 0;
    } else if (keyCode == RIGHT) {  
      x = x + 5;
      direction = 1;
      direction2 = 0;
    } else if (keyCode == UP) {
      y = y - 5;
      direction = 0;
      direction2 = -1;
    } else if (keyCode == DOWN) { 
      y = y + 5;
      direction = 0;
      direction2 = 1;
    }
  }
}
 
 
  public void render() {
  for ( int i=-1; i < 2; i++) {
    for ( int j=-1; j < 2; j++) {
      pushMatrix();
      translate(x + (i * width), y + (j*height));
      if ( direction == -1) { 
        rotate(PI);
      }
      if ( direction2 == 1) { 
        rotate(HALF_PI);
      }
      if ( direction2 == -1) { 
        rotate( PI + HALF_PI );
      }
      arc(0, 0, radius*2, radius*2, map((millis() % 500), 0, 500, 0, 0.52), map((millis() % 500), 0, 500, TWO_PI, 5.76) );
      popMatrix();
      fill(255, 255, 0);
      // mouth movement //
    }
  }
  }
 
  public void checkPixelsPacman()
  {
    color white = color(255, 255, 255);
    color black = color(0,0,0);
    color c = pg.get(x,y);
    if (c==white) {
      pac.keyPressed();
      pac.render();
    }
    else if(c == black)
   {
    pac.render();
   } 
  }
}
 
public class Dots extends Item {
  int[][] data = new int[][];
  int x;
  int y;
  public Dots(int xn,int yn)
  {
    x = xn;
    y = yn;
  }
 
  public void display()
  {
 
    fill(255); 
    ellipse(x,y,15,15);
  }
}
 
 
Pacman pac;
PImage img;
PImage startscreen;
int direction = 1;
int direction2 = 0;
int radius = 15;
PGraphics pg;
boolean path = false;
Dots dot;
void setup()
{
  background(0);
  size(723, 800);
  dot = new Dots(40,40);
  pac = new Pacman(100, 225);
  pg = createGraphics(723, 800);
  img = loadImage("psb2.jpg");
}
 
 
void draw()
{
  stroke(0);
  image(img, 0, 0);
   dot.display();
 
 
  pg.beginDraw();
  pg.background(0);
  pg.stroke(255);
  pg.line(40, 40, 40, 225);//pathway
  pg.line(40, 225, 165, 225);//pathway
  pg.line(40, 40, 325, 40);//pathway
  pg.line(165, 40, 165, 685);
  pg.line(165, 685, 40, 685);
  pg.line(40, 685, 40, 755);
  pg.line(40, 755, 690, 755);
  pg.line(690, 755, 690, 685);
  pg.line(690, 685, 560, 685);
  pg.line(560, 685, 560, 40);
  pg.line(400, 40, 690, 40);
  pg.line(400, 40, 400, 145);
  pg.line(690, 40, 690, 145);
  pg.line(690, 145, 40, 145);
  pg.line(325, 40, 325, 145);
  pg.line(245, 145, 245, 225);
  pg.line(245, 225, 320, 225);
  pg.line(320, 225, 320, 300);
  pg.line(250, 300, 480, 300);
  pg.line(250, 300, 250, 375);
  pg.line(480, 300, 480, 375);
  pg.line(480, 375, 800, 375);
  pg.line(250, 375, 0, 375);
  pg.line(250, 375, 250, 525);
  pg.line(40, 525, 320, 525);
  pg.line(40, 525, 40, 610);
  pg.line(320, 525, 320, 610);
  pg.line(320, 610, 165, 610);
  pg.line(40, 610, 90, 610);
  pg.line(90, 610, 90, 685);
  pg.line(320, 610, 560, 610);
  pg.line(475, 610, 475, 685);
  pg.line(475, 685, 405, 685);
  pg.line(405, 685, 405, 755);
  pg.line(320, 755, 320, 680);
  pg.line(320, 680, 250, 680);
  pg.line(250, 680, 250, 610);
  pg.line(400, 610, 400, 525);
  pg.line(400, 525, 680, 525);
  pg.line(680, 525, 680, 610);
  pg.line(680, 610, 630, 610);
  pg.line(630, 610, 630, 685);
  pg.line(480, 375, 480, 525);
  pg.line(480, 455, 250, 455);
  pg.line(400, 300, 400, 225);
  pg.line(400, 225, 480, 225);
  pg.line(480, 225, 480, 145);
  pg.line(690, 145, 690, 220);
  pg.line(690, 220, 560, 220);
  pg.endDraw();
 // image(pg, 0, 0);
 
  pac.checkPixelsPacman();
 
}
