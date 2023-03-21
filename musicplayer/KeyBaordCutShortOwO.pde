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
  if ( key == '1' ) song0.loop(0);
  if ( key == '2' ) song1.loop(0);
  if ( key == '3' ) song2.loop(0);
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
  soundEffect0.loop(0); //only need partial file, use .play(int millis)
  //Visual Image or Text of Goodbye
  delay(3000); //alternate way of playing sound once
  exit();
}//End quitButtonCode
//
void muteSong()
{
  if ( song0.isMuted() ) {
    song0.unmute();
  } else if ( song0.isMuted() && song0.position() >= song0.length()*4/5 ) {
    song0.rewind(); //one solution
    song0.unmute();
    
  }
}
    
void playPause() {
  if ( song0.isPlaying() ) {
    song0.pause();
    } else if ( song0.position() >= song0.length()*4/5 ) {
      song0.play();
    }
}
//
void autoPlay() {}//End AutoPlay
//
//Stop = Rewind
void stopSong()
{
if ( song0.isPlaying() ) {
  song0.pause();
  song0.rewind(); 
} else {
  song0.rewind();
}
}
//End Stp Song
//
void fastForward() {
  if ( song0.isPlaying() )song0.skip(-1000);
}//End Fast Forward
//
void fastRewind() {
  if(song0.isPlaying() )song0.skip(-1000);
}//End Fast Rewind
//
void nextSong() {}//End Next Song
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
