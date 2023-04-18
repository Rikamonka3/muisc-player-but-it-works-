
void loadingMp4s() {
  //
  
  minim = new Minim(this);
  //
  //Concatenation of Pathway + File Name
  String musicPathway = "../Music/";
  String soundEffectPathway = "../Sound Effects/"; //From Sketch to Sound Effect Folder
  String FuwaFileName = "Fuwa.mp3";
  String BeatsFileName = "Beats.mp3";
  String spearofjusticeFileName = "Spear_of_Justice.mid";
  String ImportFileName = "Import.mp3";
  String DanganFileName = "Dangan.mp3";
  songs[0] = minim.loadFile( musicPathway + FuwaFileName );
  songs[1] = minim.loadFile( musicPathway + BeatsFileName );
  songs[2] = minim.loadFile( musicPathway + spearofjusticeFileName);
  songs[4] = minim.loadFile( musicPathway + DanganFileName);
  soundEffects[1] = minim.loadFile( soundEffectPathway + ImportFileName );
  //
  //println("Music Pathway is", musicPathway);
}//End loadMusic
