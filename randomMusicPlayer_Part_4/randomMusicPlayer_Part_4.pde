import ddf.minim.*;
Minim minim;
AudioPlayer song;
String[] songNames;
String nowPlaying, fileName, folderName;
int index;
float barLength, barHeight, songPos, wave1H, wave2H;
boolean started, fileSelectedYet;
ArrayList<String> songsPlayed = new ArrayList();

void setup(){
  surface.setLocation(0, 0);
  size(800, 600);
  minim = new Minim(this);
  nowPlaying = " ";
  textAlign(CENTER);
  started = false;
  barLength = width/1.5;
  barHeight = height/15;
  wave1H = height/1.5;
  wave2H = height/1.15;
}

void draw(){
  background(0);
  fill(255);
  if(!fileSelectedYet){
    textSize(width/25);
    text("Click in Window\nto Select List/music folder\n\n" +
    "All Lists must be in the same location\nas the music on the lists", width/2, height / 3); 
  }else{
    fill(255);//redundant
    textSize(width/23);
    text("Click in window to load a random song\n\nNOW PLAYING: \n" + nowPlaying, width/2, height/8);
    if(song != null && started && !song.isPlaying()){
      loadSong();
    }
    if(song != null && started){
      songBar();
      waveForm();
    }
    if(songNames.length == songsPlayed.size() && !song.isPlaying()){
      fileSelectedYet = started = false;
      songsPlayed.clear();
      frameCount = -1;
    }
  }
}

void mouseReleased(){
  if(fileSelectedYet){
    started = true;
    loadSong();
  }else{    
    selectInput("Select list/music folder:", "fileSelected", dataFile("*.txt"));
  }
}
