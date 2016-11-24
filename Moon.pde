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
     
     if( keyPressed)
     {
       if( key =='m' || key == 'M')
       {
         loading_bar = 301;
       }
       
     }//end outer if
     
   }//end render
}//end class