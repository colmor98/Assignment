/*
Author: Colm O'Reilly
Student Number: C15502723
Description: A spaceship view onto a foreign planet
*/

PImage img;
int loading_bar = 0;
loading load = new loading();

void setup()
{
  size(1000,625);
  pic = loadImage("spaceplanet.jpg");
  img = loadImage("stars.jpg");
}

void draw()
{
  if(loading_bar == 300)
  {
    background(pic);
  }
  else
  {
    load.render();
  }
  
}