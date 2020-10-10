int sum = 0;

void setup()
{
  size(400, 420);
  background(150);

}
void draw(){
  fill(0);
  background(155);
  sum = 0;
  Die bob = new Die (10, 10);
  bob.show();
  noLoop();
  fill(0);
  text("Total: " + sum, 180, 415);
  
}

void mousePressed(){

  redraw();
}

class Die{ //models one single dice cube

  int myX, myY, rollNum;
  
  Die(int x, int y){ //constructor
    myX = x; 
    myY = y;
  }
  
  void roll(){
    fill(0);
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
        r=r+4;
        g=g+3;
        b=b+3;
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
