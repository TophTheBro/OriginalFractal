int limit = 10;
int numCircles = 4;
public void setup(){
  size(1000,1000);
}

public void draw(){
  background(16, 21, 203);
  inscribedCircle(500,500,900, numCircles);
}

public void inscribedCircle(float x, float y, float size, int numCircles){
 if(size >= limit){
 translate(x, y);
 fill(0,222,75);
 ellipse(0, 0, size, size);
 for(int i = 0; i < numCircles; i++){
   rotate((float)(i * 2 * Math.PI / numCircles));
   inscribedCircle(0 , (float)(-1 * (size / ( 1 + Math.sin(Math.PI / numCircles))) / 2) , (float)(size - (size / (1 + Math.sin(Math.PI / numCircles)))), numCircles);
   rotate((float)(-i * 2 * Math.PI / numCircles));
 }
 translate(-x, -y);
  }else{
  }
}

public void keyPressed(){
 if(key == 'd' && numCircles < 10){
   numCircles += 1;
 }if(key == 'a' && numCircles > 1){
   numCircles -= 1;
 }if(key == 'w' && limit > 1){
   limit /= 2;
 }if(key == 's' && limit < 250){
   limit *= 2;
 }
}
