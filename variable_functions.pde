void nextButtonArrayCatch()
{
  if ( cSong >= song.length-1 )
  { 
    cSong -= cSong;
  }
  else
  {
    cSong++;
  }
}
void backButtonArrayCatch()
{
  if ( cSong <= 0 )
  { 
    cSong += song.length-1;
  }
  else
  {
    cSong--;
  }
}
