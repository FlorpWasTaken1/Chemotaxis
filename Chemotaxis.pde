//declare bacteria variables here   
Bacteria [] link;

 void setup()   
 {     
   //initialize bacteria variables here   
   size(300,300);
   link = new Bacteria[1000];
   for(int i = 0; i < link.length; i++){
    link[i] = new Bacteria(); 
   }
   
 }   
 void draw()   
 {    

   background(0);
   for(int i = 0; i < link.length; i++){
    int r = 97;
    int g = 255;
    int b = 139;
    fill(r,g,b);
    link[i].show();
    link[i].walk();
    
   }

 }  
   
int wall(int pos) {
  int roundedPos = 0;
  
  roundedPos = Math.max(10, Math.min(290, pos));
  
  return roundedPos;
  
}

 class Bacteria    
 {     
   int myX,myY;
   //colors
   int r = 97;
   int g = 255;
   int b = 139;
   
   //start of constructor
   Bacteria(){
     noStroke();
     fill(r,g,b);
     myX = 500; myY = 500;
   }//end of constructor
   
   void walk(){//start of walk() member variable
     //myX = myX + (int)(Math.random()*10)-5;
     //myY = myY + (int)(Math.random()*10)-5;
     if(myX > mouseX){
      myX = wall(myX + (int)(Math.random()*5)-1); 
     }
     if(myY > mouseX){
      myY = wall(myY + (int)(Math.random()*5)-1); 
     }
      if(myX < mouseX){
      myX = wall(myX + (int)(Math.random()*5)-3); 
     }
     if(myY < mouseX){
      myY = wall(myY + (int)(Math.random()*5)-3); 
     }
   }//end of walk()
   
   
   void show(){//start of show() member variable
     ellipse(myX,myY,20,20);
   }//end of show()
   
 }    //end of bacteria class
