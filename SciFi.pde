/*
Author: Colm O'Reilly
Student Number: C15502723
Description: A spaceship view onto a foreign planet
*/

//Globals
//images
PImage pic;
PImage img;
PImage mon;

//var
int loading_bar = 0;

//classes
loading load = new loading();
moon moon1 = new moon();
moonInfo mInfo = new moonInfo();

void setup()
{
  size(1000,625);
  pic = loadImage("spaceplanet.jpg");
  img = loadImage("stars.jpg");
  mon = loadImage("moon.png");
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
   //if moon clicked, call MoonInfo
    else if(loading_bar == 301)
    {
      mInfo.render();
    }//end if
    else
  {
    load.render();
  }
  
}