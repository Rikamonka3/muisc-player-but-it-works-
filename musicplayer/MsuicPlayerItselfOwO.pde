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
Boolean activateWindow=false, autoPlayON=false;
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
  if (autoPlayON ==true ) autoPlayMusic();
print(autoPlayON, songs[currentSong].isPlaying(), currentSong, songs[currentSong].position(), songs[currentSong].length());
} //End draw
//
void keyPressed() {
  //
  //Play sound effect when pressing a key, including delay
  soundEffects[1].play();
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
