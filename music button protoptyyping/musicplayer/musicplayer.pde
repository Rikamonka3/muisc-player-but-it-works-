import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
Audioplayer song;
//
void setup() {
 minim = new Minim(this);
 song = minim.loadfile("../music/ange/beats.mp3)";
 song.loop(0)
} //End Setup
//
void draw()
