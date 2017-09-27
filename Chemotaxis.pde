 //declare bacteria variables here   
  Bacteria[] One;
 void setup()   
 {     
 	//initialize bacteria variables here   
 size(500,500);
 frameRate(60);
 
   One = new Bacteria[8];
 for(int i = 0; i < One.length; i++){
   One[i] = new Bacteria();
 }
 }   

 void draw()   
 {    
 	//move and show the bacteria   
 background(185,185,185);

 for(int i = 0; i < One.length; i++){


  One[i].Move();
 One[i].Show();
  One[i].Move2();
 }
 }  
 class Bacteria    
 {     
 	//lots of java!   
 int myY,myX, myColour;

 Bacteria(){
 myY = 250;
 myX = 250;
 myColour = (int)(Math.random()*255);
 }
 void Move(){
      myX = myX + (int)(Math.random()*5)-2;

   myY = myY + (int)(Math.random()*5)-2;
 }
 void Move2(){
   
      if(myX < mouseX){
   myX = myX + (int)(Math.random()*5)-3;
   }
      if(myX > mouseX){
   myX = myX + (int)(Math.random()*5)-1;
   }
         if(myY < mouseX){
   myY = myY + (int)(Math.random()*5)-1;
   }
            if(myY > mouseX){
   myY = myY + (int)(Math.random()*5)-3;
   }
 }
 void Show(){
   fill(myColour,myColour,myColour);
 ellipse(myX,myY,10,10);
 }
 }    