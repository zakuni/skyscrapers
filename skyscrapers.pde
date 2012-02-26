Skyscraper s1 = new Skyscraper();
Skyscraper s2 = new Skyscraper();

void setup(){
  size(200, 200);
  frameRate(60);
  background(100, 100, 250);
  fill(220, 220, 220, 255);
}

void draw(){
  s1.construct();
  s2.construct();
}

class Skyscraper{
  int X = random(width);
  int Y = height;
  int housetop = random(height);

  void construct(){
    Y -= 1; 
    if(Y < housetop){
      Y = height;
      X = random(width);
      housetop = random(height * 5/4);
    }
    quad(X, Y, X+20, Y, X+10, Y+10, X-10, Y+10);
  }
}
