class moon
{
   moon()
   {
     
   }
   //draw circle on moon  to see if moon is clicked
   void render()
   {
     noStroke();
     noFill();
     ellipse(520,205, 30,30);
     
     if(mousePressed == true)
     {
       loading_bar = 301;
     }
     
   }
}