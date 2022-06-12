import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global_variables
Minim minim;
AudioPlayer[] song = new AudioPlayer[8];
AudioMetaData[] meta = new AudioMetaData[8];
int cSong = 0;
float buttonwidth,playbuttonx,playbuttony,forwardbuttonx,forwardbuttony,nextbuttonx,nextbuttony,backwardbuttonx,backwardbuttony,backbuttonx,backbuttony,mutebuttonx,mutebuttony,stopbuttonx,stopbuttony ;
float titletextx,titletexty;
PImage[] img = new PImage[7];
PFont titleFont;
boolean loopcheck=false;
color white=#FFFFFF,black=0;
//

void setup()
{
  fullScreen();
  population();
}

void draw( )
{
  background(white);
  stopButton();
  backButton();
  backwardButton();
  playButton();
  forwardButton();
  nextButton();
  muteButton();
  title();  
}

void keyPressed()
{
  if ( key=='l' || key=='L' )
  {
      if(loopcheck==false)
      { 
        song[cSong].loop();
         loopcheck=true;
      }
      else if(loopcheck==true)
      { 
        song[cSong].play();
         loopcheck=false;
      }
  }
  if ( key=='q' || key=='Q' ) 
  {
    exit();
  }
} 
void mousePressed()
{
  if ( mouseX>=playbuttonx && mouseX<=playbuttonx+buttonwidth && mouseY<=playbuttony+buttonwidth ) 
  {
    if ( song[cSong].isPlaying() ) 
    {
      song[cSong].pause();
    } 
    else 
    {
      song[cSong].play(); 
    }
  }
  if ( mouseX>=forwardbuttonx && mouseX<=forwardbuttonx+buttonwidth && mouseY<=forwardbuttony+buttonwidth )
  {
    song[cSong].skip(1000);
  }
  if ( mouseX>=backwardbuttonx && mouseX<=backwardbuttonx+buttonwidth && mouseY<=backwardbuttony+buttonwidth )
  {
    song[cSong].skip(-1000);
  }
  if ( mouseX>=nextbuttonx && mouseX<=nextbuttonx+buttonwidth && mouseY<=nextbuttony+buttonwidth )
  {
    if ( song[cSong].isPlaying() ) 
    {
      song[cSong].pause();
      song[cSong].rewind();
      nextButtonArrayCatch();
      song[cSong].play();
    } 
    else 
    {
      song[cSong].rewind(); 
      nextButtonArrayCatch();
      song[cSong].play();
    }
  }
  if ( mouseX>=backbuttonx && mouseX<=backbuttonx+buttonwidth && mouseY<=backbuttony+buttonwidth )
  {
    if ( song[cSong].isPlaying() ) 
    {
      song[cSong].pause();
      song[cSong].rewind();
      backButtonArrayCatch();
      song[cSong].play();
    } 
    else 
    {
      song[cSong].rewind(); 
      backButtonArrayCatch();
      song[cSong].play();
    }
  }
  if ( mouseX>=mutebuttonx && mouseX<=mutebuttonx+buttonwidth && mouseY<=mutebuttony+buttonwidth )
  {
    if ( song[cSong].isMuted() ) { 
      song[cSong].unmute();
    } else {
      song[cSong].mute();
    }
  }
  if ( mouseX>=stopbuttonx && mouseX<=stopbuttonx+buttonwidth && mouseY<=stopbuttony+buttonwidth )
  {
    if ( song[cSong].isPlaying() ) 
    {
      song[cSong].pause();
      song[cSong].rewind();      
    } 
    else 
    {
      song[cSong].rewind(); 
    }
  }
}
