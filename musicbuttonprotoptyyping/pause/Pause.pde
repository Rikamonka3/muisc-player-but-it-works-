//Global Variables
//
void setup() {
  //Display
  size(1080, 720); //width, height 
  fullScreen(); //displayWisth, displayHeight
  //
  //Population: visual data
 // 
} //End setup
//
void draw() {
  //Stop Button
  rect(X, Y, Width, Height);
  //
  //Pause Button
  rect( X, Y, Width, Height );
  rect( X, Y, Width, Height );
  //
  //Play Button
  triangle( X1, Y1, X2, Y2, X3, Y3);
  //
  //Mute button
  //Homework
  //
  //Fast Foward Button
  triangle(X1, Y1, X2, Y2, X3, Y3);
  triangle(X1, Y1, X2, Y2, X3, Y3);
  //
  //Next Button
  triangle(X1, Y1, X2, Y2, X3, Y3);
  rect( X, Y, Width, Height );
  //
  //Prevecvious button
  triangle(-X1, -Y1, -X2, -Y2, -X3, -Y3);
  rect( -X, -Y, -Width, -Height );
  //
  //Loop
  //Homework
  ellipse( X, Y, WIdthDiamater, HightDiamater);
  ellipse( X, Y, WIdthDiamater, HightDiamater);
  triangle(X1, Y1, X2, Y2, X3, Y3);
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
