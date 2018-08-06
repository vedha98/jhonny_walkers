import processing.video.*;
import g4p_controls.*;
Movie mov,menumov1,menumov2,menumov3;
Boolean start_pressed =false,main_played=false,menu_selected=false,menumov1_started=false;
String name;
public void setup(){
  //size(640,480,JAVA2D);
  fullScreen(JAVA2D);
  mov = new Movie(this,"video.mp4");
  menumov1 = new Movie(this,"video2.mp4");
  menumov2 = new Movie(this,"video.mp4");
  menumov3 = new Movie(this,"video.mp4");
    
  
  
  createGUI();
  customGUI();
  // Place your setup code here
  
}

public void draw(){
  background(0);
  if(main_played && !menu_selected){
    image(menumov1,100,0);
    menumov1.play();
    if(!menumov1_started){
      menumov1.jump(0.1);
    }
  if(mouseX>100 && mouseX<700){
  menumov1_started=true;
  }else{
  menumov1_started=false;
  }
 
  
  
  }
  else if(start_pressed){
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
  if(mov.time()>3){
mov.pause();
main_played = true;

}else{
  image(mov,100,0);
  mov.play();
}


println(mov.time());

}
