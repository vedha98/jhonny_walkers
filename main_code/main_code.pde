import processing.video.*;
import g4p_controls.*;
Movie mov,mov1;
Boolean start_pressed =false,main_played=false;
String name;
public void setup(){
  //size(640,480,JAVA2D);
  fullScreen(JAVA2D);
  mov = new Movie(this,"video.mp4");
  
  
  createGUI();
  customGUI();
  // Place your setup code here
  
}

public void draw(){
  background(0);
  if(start_pressed){
  mainVideo();
  }
 
 
  
  
  
  
}
void movieEvent(Movie mov){
mov.read();
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){

}
public void mainVideo(){
  if(mov.time()>10){
mov.pause();
main_played = true;

}else{
  image(mov,100,0);
  mov.play();
}


println(mov.time());

}
