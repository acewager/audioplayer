void population()
{
  minim = new Minim(this);
  song[cSong]= minim.loadFile("Beat_Your_Competition.mp3");
  song[++cSong]= minim.loadFile("Cycles.mp3");
  song[++cSong]= minim.loadFile("Eureka.mp3");
  song[++cSong]= minim.loadFile("Ghost_Walk.mp3");
  song[++cSong]= minim.loadFile("groove.mp3");
  song[++cSong]= minim.loadFile("Newsroom.mp3");
  song[++cSong]= minim.loadFile("Start_Your_Engines.mp3");
  song[++cSong]= minim.loadFile("The_Simplest.mp3");
  cSong-=cSong;
  //
  for ( int i=cSong; i<song.length; i++ ) {
    meta[i] = song[i].getMetaData();
  }
  //
  //size(512,512);
  img[0]=loadImage("play.png");
  img[1]=loadImage("back.png");
  img[2]=loadImage("backward.png");
  img[3]=loadImage("forward.png");
  img[4]=loadImage("mute.png");
  img[5]=loadImage("next.png");
  img[6]=loadImage("stop.png");
  //
  //
  titleFont = createFont ("Harrington", 55);
  //
  //
  playbuttonx=width*9/20;
  playbuttony=height*1/20;
  buttonwidth=width/50;
  
  forwardbuttonx=playbuttonx+buttonwidth+10;
  forwardbuttony=playbuttony;
  
  nextbuttonx=forwardbuttonx+buttonwidth+10;
  nextbuttony=playbuttony;
  
  mutebuttonx=nextbuttonx+buttonwidth+10;
  mutebuttony=playbuttony;
  
  backwardbuttonx=playbuttonx-(buttonwidth+10);
  backwardbuttony=playbuttony;
  
  backbuttonx=backwardbuttonx-(buttonwidth+10);
  backbuttony=playbuttony;
  
  stopbuttonx=backbuttonx-(buttonwidth+10);
  stopbuttony=playbuttony;
  
  titletextx=playbuttonx+15;
  titletexty=(height*2/20)+10;
}
