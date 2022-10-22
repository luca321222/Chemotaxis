Flood [] Carriers = new Flood [12];
PImage Helmet;
void setup()
{
  size(500, 500);
  for (int i = 0; i < Carriers.length; i++)
  {
    Carriers[i] = new Flood();
  }
  Helmet = loadImage("https://w7.pngwing.com/pngs/895/1016/png-transparent-halo-reach-halo-3-halo-combat-evolved-anniversary-halo-spartan-assault-halo-wars-video-game-halo-halo-wars-thumbnail.png");
}
void draw()
{
  background(126, 174, 198);
  for (int i = 0; i < Carriers.length; i++)
  {
    Carriers[i].walk();
    Carriers[i].show();
  }
  image(Helmet, mouseX-25, mouseY-25, 50, 50);
}


class Flood
{
  int myX, myY, myColor, myFace;
  Flood()
  {
    myX = 250;
    myY = 250;
    myColor = color(220, 222, 157);
    myFace = color(175, 178, 113);
  }
  void walk()
  {
    if (mouseX > myX)
    {
      myX = myX + (int)(Math.random()*16)-4;
    } else
    {
      myX = myX + (int)(Math.random()*16)-10;
    }
    if (mouseY > myY)
    {
      myY = myY + (int)(Math.random()*16)-4;
    } else
    {
      myY = myY + (int)(Math.random()*16)-10;
    }
  }
  void show()
  {
    fill(myColor);
    ellipse(myX, myY + 10, 15, 30);//waist

    beginShape();//torso
    curveVertex(myX-20, myY+10);
    curveVertex(myX-20, myY+10);
    curveVertex(myX-25, myY);
    curveVertex(myX-20, myY-10);
    curveVertex(myX-15, myY-15);
    curveVertex(myX-15, myY-20);
    curveVertex(myX-8, myY-25);
    curveVertex(myX-5, myY-28);
    curveVertex(myX-3, myY-32);
    curveVertex(myX-1, myY-30);
    curveVertex(myX, myY-33);
    curveVertex(myX+2, myY-34);
    curveVertex(myX+4, myY-32);
    curveVertex(myX+6, myY-29);
    curveVertex(myX+7, myY-29);
    curveVertex(myX+9, myY-29);
    curveVertex(myX+12, myY-27);
    curveVertex(myX+15, myY-25);
    curveVertex(myX+14, myY-24);
    curveVertex(myX+15, myY-24);
    curveVertex(myX+18, myY-23);
    curveVertex(myX+20, myY-22);
    curveVertex(myX+21, myY-20);
    curveVertex(myX+22, myY-18);
    curveVertex(myX+23, myY-17);
    curveVertex(myX+25, myY-15);
    curveVertex(myX+27, myY-13);
    curveVertex(myX+28, myY-12);
    curveVertex(myX+27, myY-10);
    curveVertex(myX+28, myY-8);
    curveVertex(myX+26, myY-5);
    curveVertex(myX+24, myY-3);
    curveVertex(myX+23, myY+1);
    curveVertex(myX+20, myY+3);
    curveVertex(myX+17, myY+10);
    curveVertex(myX+15, myY+11);
    curveVertex(myX+10, myY+12);
    curveVertex(myX-1, myY+13);
    curveVertex(myX-5, myY+13);
    curveVertex(myX-7, myY+14);
    curveVertex(myX-8, myY+15);
    curveVertex(myX-10, myY+12);
    curveVertex(myX-15, myY+13);
    curveVertex(myX-20, myY+10);
    curveVertex(myX-20, myY+10);
    endShape();

    ellipse(myX, myY-5, 20, 30);//head

    fill(myFace);
    beginShape();//face
    curveVertex(myX, myY);
    curveVertex(myX, myY);
    curveVertex(myX-3, myY+1);
    curveVertex(myX-4, myY+2);
    curveVertex(myX-2, myY+3);
    curveVertex(myX, myY+5);
    curveVertex(myX+1, myY+4);
    curveVertex(myX+7, myY-1);
    curveVertex(myX+6, myY-2);
    curveVertex(myX+5, myY-3);
    curveVertex(myX+4, myY-4);
    curveVertex(myX+3, myY-5);
    curveVertex(myX+2, myY-6);
    curveVertex(myX+1, myY-7);
    curveVertex(myX, myY-8);
    curveVertex(myX, myY-10);
    curveVertex(myX, myY);
    curveVertex(myX, myY);
    endShape();

    fill(myColor);
    pushMatrix();
    translate(myX+20, myY+20);
    rotate(radians(70));
    ellipse(0, 0, 40, 10);
    popMatrix();

    pushMatrix();
    translate(myX-20, myY+20);
    rotate(radians(-70));
    ellipse(0, 0, 40, 10);
    popMatrix();

    pushMatrix();
    translate(myX-10, myY+40);
    rotate(radians(-70));
    ellipse(0, 0, 40, 10);
    popMatrix();

    pushMatrix();
    translate(myX+10, myY+40);
    rotate(radians(70));
    ellipse(0, 0, 40, 10);
    popMatrix();
  }
}
