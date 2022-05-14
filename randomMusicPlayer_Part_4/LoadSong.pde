void loadSong(){
  if(song != null && song.isPlaying()){
    song.pause();
  }
  index = int(random(0, songNames.length)); 
  File f = new File(folderName + songNames[index]);
  if(!f.isFile() && !played()){
    songsPlayed.add(songNames[index]);
  }else{
    if(!played()){
      songsPlayed.add(songNames[index]);
      song = minim.loadFile(folderName + songNames[index]); 
      song.play();
      nowPlaying = songNames[index];
    }
  }
}
