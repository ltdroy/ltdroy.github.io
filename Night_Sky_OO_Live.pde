
ArrayList<Star> stars;

void setup() {
  size(500,500);
  stroke(#FCFBE3);
  
  stars = new ArrayList<Star>();
  
  int star_index = 0;
  while (star_index < 250) {
  stars.add(new Star(random(0,500), random(0,500), random(0.1, 2), random(10, 15)) );
  star_index ++;
  }
  
}

void draw(){
  background(0);
 
  for (int i = 0; i < stars.size(); i++){
    Star star = stars.get(i);
    star.display();
  }
  
  
  
}

void mousePressed() {
  stars.add(new Star(mouseX, mouseY, random(0.1,2), random(10,15)) );
}

//void keyPressed() {
// if (keyCode == ENTER) {
// saveFrame("screen-####.jpg");
// }
//}


// Thanks to: https://processing.org/discourse/beta/num_1261157915.html, where I swiped this function
void lineAngle(float x, float y, float angle, float length)
{
  line(x, y, x+cos(angle)*length, y-sin(angle)*length);
}


// The star objects

class Star {
  
  float x;
  float y;
  float size;
  float n;
  
  Star(float init_x, float init_y, float init_size, float init_n){
   
    x = init_x;
    y = init_y;
    size = init_size;
    n = init_n;
    
  }
  
  void display() {
    float counter = 0;
    stroke(#FCFBE3);
    while (counter < n){
     lineAngle(x, y, random(0,360), size);
     counter = counter + 1;
    }
  }
      
}
