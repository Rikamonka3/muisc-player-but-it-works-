import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
void loadingMp4s() {
  //
  minim = new Minim(this);
  //
  //Concatenation of Pathway + File Name
  String musicPathway = "../Music/"; //From Sketch to Music Folder
  String soundEffectPathway = "../Sound Effects/"; //From Sketch to Sound Effect Folder
  String FuwaFileName = "fuwa.mp3";
  String angelFileName = "angel.mp3";
  String spearofjusticeFileName = "Spear_of_Justice.mid";
  String zeldaFileName = "Zelda.mp3";
  song0 = minim.loadFile( musicPathway + FuwaFileName );
  song1 = minim.loadFile( musicPathway + angelFileName );
  song2 = minim.loadFile( musicPathway + spearofjusticeFileName );
  soundEffect0 = minim.loadFile( soundEffectPathway + ZeldaFileName );
  //
  //println("Music Pathway is", musicPathway);
}//End loadMusic
