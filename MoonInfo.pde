class moonInfo
{
  moonInfo()
  {
    
  }
  
  //Draw moon and give info
  void render()
  {
    background(0);
    image(mon,420,80); 
    
    //text based information for moon
    textFont(font,40);
    text("Rhea", width/2 - 20,50);
    fill(155,150,150);
    textSize(50);
    
    textFont(font,32);
    text("- Saturn's second largest moon", 25,150);
    text("- Ninth-largest moon in the \n   Solar System", 25, 200);
    text("- Discovered in 1672 by\n   Giovanni \n  Domenico Cassini", 25, 300);
    text("- Named after the Titan\n   Rhea of Greek mythology", 25, 450);
    
    //draw shape to surround text
    stroke(255);
    noFill();
    beginShape();
    vertex(0,70);
    vertex(50,110);
    vertex(360,110);
    vertex(410,160);
    vertex(410,460);
    vertex(360,510);
    vertex(50,510);
    vertex(0,550);
    endShape();
    
    //show text to show how to re-direct back to home screen
    text("Press 'b' or 'B' to return to your home screen", 10,610);
    textFont(font1,15);

  if( keyPressed)
     {
       if( key =='b' || key == 'B')
       {
         loading_bar = 300;
       }
       
     }//end outer if
}//end render
  
  
}