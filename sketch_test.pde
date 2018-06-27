float angle = 0;
int count1=0;
  float color1;
  float color2;
  float color3;
void setup() {
  size(800, 800);
  background(255);
  frameRate(20);
  colorMode(RGB,256);
  
}
//ｸﾘｯｸすると次の色へ変わる
void mousePressed(){
  count1++;
  color1=random(150,256);
  color2=random(150,256);
  color3=random(150,256);

}
//線を描く
void draw() {
  float colorR4=random(150,256);
  float colorG5=random(150,256);
  float colorB6=random(150,256);
  float x=random(0,width);
  float y=random(0,height);
  
//ｸﾘｯｸするまで画面上にランダムに四角形が出現  
  if(count1==0){
  frameRate(1600);
  translate(x, y);
  rotate(angle);
  fill(colorR4,colorG5,colorB6);
  noStroke();
  rect(x, y, 50, 50);
  angle += 0.1;
  }
  
//一回クリックすると円を作り、もう一回クリックすると止まる。  
  if(count1%2!=0){
    translate(mouseX, mouseY);
    rotate(angle);
    rect(0, 0, 50, 50);
    fill(256,256,256);
    angle += 0.1;
    frameRate(400);
    stroke(color1,color2,color3);
  }
}

int count = 1;
//Pを押したらスクリーンショットをとる
void keyPressed() {
  if(key == 'p' || key == 'P') {
    String path  = System.getProperty("user.home") + "/Desktop/screenshot" + count + ".jpg";
    save(path);
    count++;
    println("screen saved." + path); 
  }
}
