//Global Variables
//
//float stopInsdieWidth, stopInsideHeight;
PImage img;
void setup() {
  //Display

  size(750, 750); //width, height 
  img = loadImage("anime.jpg");
  image(img, 0, 0);
  
  //displayWisth, displayHeight
  //
  //Population: visual data
 // 
} //End setup



void draw() {
  //List Box
  //rect(listX, listY, listWidth, listHeight);
  //
  //Stop Button
  fill(black);
  rect(stopX, stopY, ButtonHeight, ButtonWidth);
  fill(white);
  rect(stopX2, stopY2, ButtonWidth2, ButtonHeight2);
  fill(purple);
  ellipse(buttonSX, buttonSY, stopButtonWidth, stopButtonHeight); 
  //
  //Pause Button
  fill(black);
  rect(pauseX, pauseY, ButtonWidth, ButtonHeight);
  fill(white);
  rect( pauseX2, pauseY2, ButtonWidth2, ButtonHeight2 );
  //Stick for pause Butoon
  fill(red);
  rect(stick1X, stick1Y, stick1Width, stick1Height);
  rect(stick2X, stick2Y, stick1Width, stick1Height);
  //
  //List
  fill(black);
  rect(listX, listY, listWidth, listHeight);
  fill(white);
  rect(listX2, listY2, listWidth2, listHeight2);
   fill(white);
   textSize(20);
  text("Music Player", 10, 20);
  //Play Button
  fill(black);
  rect(PlayX, PlayY, ButtonWidth, ButtonHeight);
  fill(white);
  rect(playX2, playY2, ButtonWidth2, ButtonHeight2 );
  fill(purple);
  //triangle(360, 450, 100, 200 , 250,300 );
  //
  //Mute button
  //Homework
  //
  //Fast Foward Button
  //triangle(X1, Y1, X2, Y2, X3, Y3);
  //triangle(X1, Y1, X2, Y2, X3, Y3);
  //
  //Next Button
  //triangle(X1, Y1, X2, Y2, X3, Y3);
  //rect( X, Y, Width, Height );
  //
  //Prevecvious button
  //triangle(-X1, -Y1, -X2, -Y2, -X3, -Y3);
  //rect( -X, -Y, -Width, -Height );
  //
  //Loop
  //Homework
  //ellipse( X, Y, WIdthDiamater, HightDiamater);
  //ellipse( X, Y, WIdthDiamater, HightDiamater);
  //triangle(X1, Y1, X2, Y2, X3, Y3);
  //
  //Loop the song infinte
  //Looptheplaylist
  //Bothhomework
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End MAIN Program
