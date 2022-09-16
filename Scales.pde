void setup() {
  size(700, 700);  //feel free to change the size
  //noLoop(); //stops the draw() function from repeating
}
void draw() {
 
 

 

  int f=5;
 boolean shift=true;
   for(int v=900; v>-90*(f/2); v= v-20*(f/2)){
     for(int u=900; u>-30*(f/2); u= u-15*(f/2)){
       if (shift==true){
         
       scale(u+50, v);
       }
       else{
         scale(u, v);
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
curveVertex(x+200,y+200);
curveVertex(x+200,y);
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
