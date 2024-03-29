/* Background Image Example
 */
//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
String pathway, fileName;
Boolean nightMode=false;
float picX_Adjusted=0.0, picY_Adjusted=0.0, picWidthAdjusted=0.0, picHeightAdjusted=0.0; //IF requires previous value, not NULL
float whiteSpace=0.0;
Boolean imageCenter=true, imageRigthBottom=false; //Dev-level Image Justification
//
size(500, 100); //Landscape
appWidth = width;
appHeight = height;
//
//Population
backgroundImageX = appWidth*0;
backgroundImageY = appHeight*0;
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
//
//Pathway & Files
String upFolder = "..";
String openFolder = "/";
String folder1 = "OwOImages";
String folder2 = "LandscapeOWO";
pathway = upFolder + openFolder + upFolder + openFolder + upFolder + openFolder + folder1 + openFolder + folder2 + openFolder;
fileName = "desktop-wallpaper-backgrounds-relaxing-anime-anime-relax.jpg";
pic = loadImage( pathway + fileName );
int picWidth = 800; //Origonal Dimension, MINE is 800, not yours
int picHeight = 600; //Origonal Dimension, MINE is 600, not yours
//Larger Dimension Algorithm, ASPECT RATIO
int smallerDimension, largerDimension;
float imageHeightRatio, imageWidthRatio;
if ( picWidth >= picHeight ) { //TRUE if Landscape or Square
  largerDimension = picWidth;
  smallerDimension = picHeight;
  imageHeightRatio = float (smallerDimension) / float (largerDimension); //Ratio is <1, fixed by CASTING
  picWidthAdjusted = backgroundImageWidth; //Compression into rect()
  picHeightAdjusted = picWidthAdjusted * imageHeightRatio; //Calculated Variable from compressed variable
  //if image fits, no changes needed
  picX_Adjusted = backgroundImageX;
  picY_Adjusted = backgroundImageY;
  if ( picHeightAdjusted > backgroundImageHeight ) { //ERROR Catch: adjusted height is beigger than rect()
    picHeightAdjusted = backgroundImageHeight; //Uses automatic compression algorithm
    picWidthAdjusted = picWidthAdjusted * imageHeightRatio; //New Calculated Value
    whiteSpace = backgroundImageWidth - picWidthAdjusted;
    if ( imageCenter==true ) picX_Adjusted = backgroundImageX + whiteSpace*1/2;
    if ( imageRigthBottom==true ) picX_Adjusted = backgroundImageX + whiteSpace;
  }
} else { //FALSE if Portrait
  /* Students to finish
   largerDimension = ;
   smallerDimension = ;
   imageWidthRatio = ;
   picWidthAdjusted = ;
   picHeightAdjusted = ;
   
   */
}
//
//Rectangle Layout and Image drawing to CANVAS
//rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
if ( nightMode==false ) tint(255, 128); //Day mode, half white (128/255=1/2)
if ( nightMode==true ) tint(64, 64, 40); //Night mode, much less BLUE
//No ASPECT RATIO Image
//image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
//ASPECT RATIO Image
println( picWidthAdjusted, picHeightAdjusted ); //View Human Error on variables, zero values
image( pic, picX_Adjusted, picY_Adjusted, picWidthAdjusted, picHeightAdjusted );
//
//End Main Program
