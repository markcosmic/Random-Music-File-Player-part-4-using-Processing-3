boolean played(){
  boolean result = false;
  for(int i = 0; i < songsPlayed.size(); i++){
    if(songNames[index] == songsPlayed.get(i)){
     result = true;
     break;
    }
  }
  return result;
}
