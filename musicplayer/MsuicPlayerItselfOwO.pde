import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
//Array uwu: AudioPlayer song0, song1, song2;
int numberOfmp4s = 5;
int numberOfeffects = 2;
AudioPlayer[] songs = new AudioPlayer[numberOfmp4s]; // 
AudioPlayer[] soundEffects = new AudioPlayer[numberOfeffects];
int currentSong = (numberOfmp4s - 1);
//

int time = 7000;
//
Boolean activateWindow=false;
//
void setup() {
  size(300, 300);
  loadingMp4s();
  //
  //Illsutrate Garbage Collection of Local Variable
  //println("Music Pathway is", musicPathway); //local variable doesn't exit outside of void loadMusic() {}
  //
} //End setup
//
void draw() {
  if ( activateWindow == true ) background(0);
  //
  //Debugging the Effective Length of the Sound Effect to code a delay
  //println ( soundEffect0.position(), soundEffect0.length() );
  //println ("When does the sound stop? Indicates delay");
  // Debugging a sound to shorten a file play
  //println( soundEffect1.position(), soundEffect1.length() );
  //
} //End draw
//
void keyPressed() {
  //
  //Play sound effect when pressing a key, including delay
  soundEffects[1].play();
  soundEffects[1].rewind();
  soundEffects[1].stop
   delay(2000); 
  keyPressedShortCuts();
  //
} //End keyPressed
//
void mousePressed() {
  if ( activateWindow==false ) activateWindow = true;
} //End mousePressed
//
//End MAIN Program
