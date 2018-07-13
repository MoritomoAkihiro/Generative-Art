int diam = 10;
float centX,centY;
float randomX,randomY;

void setup(){
  size(500,300);
  frameRate(24);
  
  smooth();
  background(180.200,200);
  randomX=random(width-50);
  randomY=random(height-100);
  centX=width/2+randomX;
  centY=height/2+randomY;
  stroke(0);
  strokeWeight(5);
  fill(255,50);
  

}

void draw(){
  if(diam<=400){
      //毎回背景をリセットする
      //background(180);
      
      //外側の円
      strokeWeight(5);
      fill(255,10);
      ellipse(centX,centY,diam,diam);
      
      ////内側の円を毎回上書きして書いてゆく
      //strokeWeight(0);
      //noFill();
      //int tempdiam=diam;
      //while(tempdiam > 10){
      //  ellipse(centX,centY,tempdiam,tempdiam);
      //  tempdiam -= 10;
      //}
      
      diam+=10;
  }
  
//大きな円ができたらリセットして、また異なる場所に新たな円を書く  
  if(diam==400){
    diam=0;
    centX=width/2;
    centY=height/2;    
    randomX=random(width-100);
    randomY=random(height-50);
    centX=50+randomX;
    centY=25+randomY;
  }
}
