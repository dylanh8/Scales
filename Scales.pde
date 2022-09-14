void setup() {
  size(700, 700, P3D);  //feel free to change the size
  //noLoop(); //stops the draw() function from repeating
}
void draw() {
 
 
 
 lights();
 float cameraY = height/2.0;
  float fov = mouseX/float(width) * PI/2;
  float cameraZ = cameraY / tan(fov / 2.0);
  float aspect = float(width)/float(height);
  
   rotateX(PI/3 + mouseY/float(height) * PI);
  rotateY(PI/3 + mouseY/float(height) * PI);
 
 
  System.out.println(mouseX);
  System.out.println(mouseY);
  int p=30;
  int f=5;
 boolean shift=true;
   for(int v=900; v>-90*(f/2); v= v-20*(f/2)){
     for(int u=900; u>-30*(f/2); u= u-15*(f/2)){
       if (shift==true){
         
       scale(u+50, v, p);
       }
       else{
         scale(u, v, p);
       }}
       if(shift==true){
         shift=false;
       } 
       else{
         shift=false;
         
       }
     }}


void scale(int x, int y, int z) {
//scale factor

int r=(int)(Math.random()*50+100);
int g=(int)(Math.random()*50+100);
int b=(int)(Math.random()*50+100);

fill(r, g, b);
//fill(#A432CE);

beginShape();
int f=3;
curveVertex(x,y);
curveVertex(x,y);
curveVertex(x-15*f,y+20*f);
curveVertex(x-40*f,y+40*f);
curveVertex(x-15*f,y+60*f);
curveVertex(x,y+60*f);
curveVertex(x,y+60*f);
endShape();
beginShape();
curveVertex(x,y);
curveVertex(x,y);
curveVertex(x+15*f,y+20*f);
curveVertex(x+40*f,y+40*f);
curveVertex(x+15*f,y+60*f);
curveVertex(x,y+60*f);
curveVertex(x,y+60*f);
endShape(); 

}
