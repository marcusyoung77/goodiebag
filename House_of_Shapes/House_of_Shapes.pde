void setup()
{
  size(500,500);
  background(255,255,255);
}

void draw()
{
  println(mouseX,mouseY);
  rect(150,250,200,200);
  fill(random(255),0,0);
  triangle(125,250,250,100,375,250);
  triangle(309,170,323,187,323,170);
  fill(0,random(255),0);
  rect(309,150,14,20);
  rect(309,130,14,20);
  rect(225,350,50,100);
  ellipse(270,410,5,5);
  ellipse(255,200,75,75);
  line(218,200,292,200);
  line(255,163,255,237);
  fill(0,0,random(255));
  rect(170,350,40,50);
  line(190,350,190,400);
  line(170,375,210,375);
  rect(290,350,40,50);
  line(310,350,310,400);
  line(290,375,330,375);

  
  
  
}
