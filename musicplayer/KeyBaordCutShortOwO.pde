void keyPressedShortCuts() {
  //
  musicShortCuts();
  quitButtons();
  //
}//End keyPressedShortCuts
//
void musicShortCuts() {
  //Key Board Short Cuts for Music, use numbers
  //Hint: notice human numbering vs. computer numbering9
  if ( key == '1' ) songs[0].loop(0);
  if ( key == '2' ) songs[1].loop(0);
  if ( key == '3' ) songs[2].loop(0);
  if ( key == 'U' || key == 'u') playPause();
  if ( key == 'P' || key=='p' ) autoPlay();
  if ( key == 'M' || key=='m' ) muteSong();
  if ( key == 'S' || key=='s' ) stopSong();
  if ( key == 'F' || key=='f' ) fastForward();
  if ( key == 'R' || key=='r' ) fastRewind();
  if ( key == 'N' || key=='n' ) nextSong();
  if ( key == 'B' || key=='b' ) previousSong();
  if ( key == 'L' || key=='l' ) loopSong();
  if ( key == 'O' || key=='o' ) loopPlaylist(); //entire playlist
  if ( key == 'W' || key=='w' ) shufflePlaylist(); //shuffle
  if ( key == 'E' || key=='e' ) loopAndShuffle(); //Loop and Shuffle
}//End musicShortCuts
//
void quitButtons() {
  //Quit Button Key Board Shortcuts
  if ( key == 'Q' || key == 'q' ) {
    quitButtonCode();
  }
  if ( key == CODED && keyCode == ESC ) {
    quitButtonCode();
  }//End Quit Buttons
}//End quitButtons
//
void quitButtonCode() {
  soundEffects[0].loop(0); //only need partial file, use .play(int millis)
  //Visual Image or Text of Goodbye
  delay(3000); //alternate way of playing sound once
  exit();
}//End quitButtonCode
//
void muteSong()
{
  if ( songs[0].isMuted() ) {
    songs[0].unmute();
  } else if ( songs[0].isMuted() && songs[0].position() >= songs[0].length()*4/5 ) {
    songs[0].rewind(); //one solution
    songs[0].unmute();
    
  }
}
    
void playPause() {
  if ( songs[0].isPlaying() ) {
    songs[0].pause();
    } else if ( songs[0].position() >= songs[0].length()*4/5 ) {
      songs[0].play();
    }
}
//
void autoPlay() {}//End AutoPlay
//
//Stop = Rewind
void stopSong()
{
if ( songs[0].isPlaying() ) {
  songs[0].pause();
  songs[0].rewind(); 
} else {
  songs[0].rewind();
}
}
//End Stp Song
//
void fastForward() {
  if ( songs[0].isPlaying() )songs[0].skip(-1000);
}//End Fast Forward
//
void fastRewind() {
  if(songs[0].isPlaying() )songs[0].skip(-1000);
}//End Fast Rewind
//
void nextSong(){} 
//End Next Song
//
void previousSong() {}//End Previous Song
//
void loopSong() {}//End Loop Song
//
void loopPlaylist() {}//End Loop the Playlist
//
void shufflePlaylist() {}//End Shuffle the Playlist()
//
void loopAndShuffle() {}//End Loop And Shuffle
//End Key Board Short Cuts Sub Program
