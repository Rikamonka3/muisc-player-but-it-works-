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

void draw() {
  if ( activateWindow == true ) background(0);
  if (autoPlayON ==true ) autoPlayMusic();
print(autoPlayON, songs[currentSong].isPlaying(), currentSong, songs[currentSong].position(), songs[currentSong].length());
} //End draw
//

//
