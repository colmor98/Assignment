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

//font
PFont font;
PFont font1;

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
  font = loadFont("AgencyFB-Bold-48.vlw");
  font1 = loadFont("AgencyFB-Reg-48.vlw");
}

void window()
{
  if( mousePressed == true)
  {
    //moon one info
    stroke(255);
    noFill();
    beginShape( );
    vertex(530,200);
    vertex(580,150 );
    vertex(610,150);
    endShape();
    //text for moon one
    text("Ganymede",612,148);
    textFont(font1,18);
    fill(255);
    
    //jupiter line
    stroke(255);
    noFill();
    beginShape();
    vertex(350,200);
    vertex(400,150);
    vertex(450,150);
    endShape();
    //jupiter tag
    text("Jupiter",452,150);
    textFont(font1,18);
    fill(255);
  }
  else
  {
    noStroke(); 
  }
    
}

void draw()
{
  if(loading_bar == 300)
  {
   
    background(pic);
    moon1.render();
    window();
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