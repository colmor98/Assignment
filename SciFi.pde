/*
Author: Colm O'Reilly
Student Number: C15502723
Description: A spaceship view onto a foreign planet
*/

//Globals
PImage pic;
PImage img;
int loading_bar = 0;
loading load = new loading();
moon moon1 = new moon();

void setup()
{
  size(1000,625);
  pic = loadImage("spaceplanet.jpg");
  img = loadImage("stars.jpg");
}

void window()
{
    stroke(255);
    noFill();
    beginShape( );
    vertex(200,30);
    vertex(800,30);
    vertex(900,100);
    vertex(900,300);
    vertex(100,300);
    vertex(100,100);
    endShape(CLOSE);
    
}

void draw()
{
  if(loading_bar == 300)
  {
   
    background(pic);
    moon1.render();
    
  }
  else
  {
    load.render();
  }
  
}