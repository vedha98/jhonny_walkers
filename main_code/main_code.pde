import processing.video.*;
import g4p_controls.*;
Movie mov,menumov1,menumov2,menumov3;
Boolean start_pressed =false,main_played=false,menu_selected=false,menumov1_started=false,menumov2_started=false,menumov3_started=false,menu1=false,menu2=false,menu3=false;
String name;
public void setup(){
  //size(640,480,JAVA2D);
  fullScreen(JAVA2D);

  mov = new Movie(this,"video.mp4");
  menumov1 = new Movie(this,"video2.mp4");
  menumov2 = new Movie(this,"video2.mp4");
  menumov3 = new Movie(this,"video2.mp4");
    
  
  
  createGUI();
  customGUI();
  // Place your setup code here
  
}

public void draw(){
  background(0);
  if(main_played && !menu_selected){
    image(menumov1,0,0);
    menumov1.play();
    if(menumov1.time()>3){
    menu_selected=true;
    menu1 = true;
    showText("menu1 has been selected by "+name);
    }
    if(!menumov1_started){
      menumov1.jump(0.1);
    }
  if(mouseX>0 && mouseX<600){
  menumov1_started=true;
  }else{
  menumov1_started=false;
  }
 image(menumov2,600,0);
    menumov2.play();
    if(menumov2.time()>3){
    menu_selected=true;
    menu2 = true;
    showText("menu2 has been selected by "+name);
    }
    if(!menumov2_started){
      menumov2.jump(0.1);
    }
  if(mouseX>600 && mouseX<1200){
  menumov2_started=true;
  }else{
  menumov2_started=false;
  }
  
  
  
  image(menumov3,1200,0);
    menumov3.play();
    if(menumov3.time()>3){
    menu_selected=true;
    menu3 = true;
    showText("menu3 has been selected by "+name);
    }
    if(!menumov3_started){
      menumov3.jump(0.1);
    }
  if(mouseX>1200 && mouseX<1800){
  menumov3_started=true;
  }else{
  menumov3_started=false;
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
