import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
AudioPlayer song0, song1, song2, song3, song4, song5, song6, song7;
AudioPlayer soundEffect0, soundEffect1;
//
Boolean firstMouseclick=false;
//
void setup() {
  size(300, 300);
  minim = new Minim(this);
  song0 = minim.loadFile("../music/Fuwa.mp3");
  song1 = minim.loadFile("../music/angel.mp3");
  song2 = minim.loadFile("../music/Spear_of_Justice.mid");
  soundEffect0 = minim.loadFile("../soundeffects/Zelda.mp3");
  song0.loop(0);
} //End setup}
//
void draw() {
  if (firstMouseclick == true )background(0);

} //End draw
//
void keyPressed() {
  //
  if ( key=='Q' || key=='q' ) exit();
  //
  soundEffect1.play();
} //End keyPressed
//
void mousePressed() {
  soundEffect1.rewind();
  if ( firstMouseclick) firstMouseclick = true;
} //End mousePressed
//
//End MAIN Program
