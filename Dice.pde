int sum = 0;

void setup()
{
  size(400, 400);
  background(150);

}
void draw(){
  Die bob = new Die (10, 10);
  bob.show();
  noLoop();
  println("Total: " + sum);
  
}

void mousePressed(){
  redraw();
  sum = 0;
}

class Die{ //models one single dice cube

  int myX, myY, rollNum;
  //int sum = 0;
  
  Die(int x, int y){ //constructor
    myX = x; 
    myY = y;
  }
  
  void roll(){
    rollNum=(int)(Math.random()*6+1); 
          sum = sum + rollNum;
  }
  
  
  void show(){
    int r = (int)(Math.random()*255);
    int g = (int)(Math.random()*255);
    int b = (int)(Math.random()*255);
    
    for(int y = 5; y < 400; y +=50 ){ //8 rows
      for(int x = 5; x < 400; x +=50){ //6 columns
        myX = x;
        myY = y;
        fill(r, g, b);
        rect(x, y, 40, 40);
        r=r+2;
        g=g+2;
        b=b+2;
        roll();

    if (rollNum ==1){
      ellipse(myX+20, myY+20, 10, 10);
    } else if (rollNum==2){
      ellipse(myX+10, myY+20, 10, 10);
      ellipse(myX+30, myY+20, 10, 10);
    } 
    else if (rollNum==3){   
      ellipse(myX+10, myY+25, 10, 10);
      ellipse(myX+30, myY+25, 10, 10);
      ellipse(myX+20, myY+10, 10, 10);
    }
    else if (rollNum ==4){
      //4
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+30, myY+10, 10, 10);
      ellipse(myX+10, myY+30, 10, 10);
      ellipse(myX+30, myY+30, 10, 10);
    } else if (rollNum ==5){
      //5 
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+30, myY+10, 10, 10);
      ellipse(myX+20, myY+20, 10, 10);
      ellipse(myX+10, myY+30, 10, 10);
      ellipse(myX+30, myY+30, 10, 10);
     } else {
      //6
      ellipse(myX+10, myY+8, 10, 10);
      ellipse(myX+30, myY+8, 10, 10);
      ellipse(myX+10, myY+20, 10, 10);
      ellipse(myX+30, myY+20, 10, 10);
      ellipse(myX+10, myY+32, 10, 10);
      ellipse(myX+30, myY+32, 10, 10);

    }
      }
    }
  }
}
