int step =10;
float lastx= -999;
float lasty= -999;
float y=50;
int borderx=20;
int bordery=10;

size(500,100);
background(255);
strokeWeight(5);
smooth();

for(int x=borderx; x<=width-borderx; x+=step){
  y=bordery+random(height-2*bordery);
  if(lastx>-999){
    line(x,y,lastx,lasty);
  }
  lastx=x;
  lasty=y;
}
