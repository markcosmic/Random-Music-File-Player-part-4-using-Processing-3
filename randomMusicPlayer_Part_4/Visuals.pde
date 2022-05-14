void songBar(){
 rectMode(CENTER);
 fill(75);
 stroke(255, 0, 0);
 strokeWeight(2);
 rect(width/2, height/2, barLength, barHeight);
 noStroke();
 fill(0, 255, 0);
 rectMode(CORNER);
 songPos = map(song.position(),0, song.length(), 0, barLength);
 rect(width/2 - barLength/2, height/2 - barHeight/3, songPos,barHeight * .7);
}
void waveForm(){
  stroke(255);
  for(int i = 0; i < song.bufferSize() - 1; i++){
    line(i, wave1H + song.left.get(i) * height/6, i + 1, wave1H + song.left.get(i + 1) * height/6);
    line(i, wave2H + song.right.get(i) * height/6, i + 1, wave2H + song.right.get(i + 1) * height/6);
  }
}
