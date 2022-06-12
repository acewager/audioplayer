void stopButton()
{
    textSize(11);
    image(img[6],stopbuttonx,stopbuttony,buttonwidth,buttonwidth);
}
void backButton()
{
    textSize(11);
    image(img[1],backbuttonx,backbuttony,buttonwidth,buttonwidth);
}
void backwardButton()
{
    textSize(11);
    image(img[2],backwardbuttonx,backwardbuttony,buttonwidth,buttonwidth);
}
void playButton()
{
    textSize(11);
    image(img[0],playbuttonx,playbuttony,buttonwidth,buttonwidth);
}
void forwardButton()
{
    textSize(11);
    image(img[3],forwardbuttonx,forwardbuttony,buttonwidth,buttonwidth);
}
void nextButton()
{
    textSize(11);
    image(img[5],nextbuttonx,nextbuttony,buttonwidth,buttonwidth);
}
void muteButton()
{
    textSize(11);
    image(img[4],mutebuttonx,mutebuttony,buttonwidth,buttonwidth);
}
void title()
{
  noStroke();
  rect(stopbuttonx, stopbuttony+buttonwidth+10,mutebuttonx-stopbuttonx+buttonwidth ,(mutebuttony-stopbuttony)+buttonwidth+10);
  fill(black);
  textAlign(CENTER,CENTER);
  textFont(titleFont, 15);
  text(meta[cSong].title(), titletextx, titletexty);
  fill(255);
}
