void setup() {
  size(700, 700);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {

  System.out.println(mouseX);
  System.out.println(mouseY);
  
 boolean shift=true;
   for(int v=900; v>-90; v= v-20){
     for(int u=900; u>-30; u= u-15){
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


void scale(int x, int y) {
//scale factor
int r=(int)(Math.random()*60)+20;
int g=(int)(Math.random()*60)+20;
int b=(int)(Math.random()*60)+20;

fill(r, g, b);

beginShape();

curveVertex(x,y);
curveVertex(x,y);
curveVertex(x-15,y+20);
curveVertex(x-40,y+40);
curveVertex(x-15,y+60);
curveVertex(x,y+60);
curveVertex(x,y+60);
endShape();
beginShape();
curveVertex(x,y);
curveVertex(x,y);
curveVertex(x+15,y+20);
curveVertex(x+40,y+40);
curveVertex(x+15,y+60);
curveVertex(x,y+60);
curveVertex(x,y+60);
endShape(); 

}
