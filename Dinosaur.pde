class Dinosaur extends Enemy {
	// Requirement #4: Complete Dinosaur Class
  float speed = 1f;
	final float TRIGGERED_SPEED_MULTIPLIER = 5;

  Dinosaur(float x, float y){
    super(x,y);
  }

  void display(){

      int direction = (speed > 0) ? RIGHT : LEFT;
      
        pushMatrix();
        translate(x, y);
        if (direction == RIGHT) {
          scale(1, 1);
          image(dinosaur, 0, 0, w, h); 
        } else {
          scale(-1, 1);
          image(dinosaur, -w, 0, w, h); 
        }
        popMatrix();
  }

  void update(){
    float currentSpeed = speed;
    
    if (x < 0 || x > width - w) { 
      speed *= -1 ;
    }
    
    //if(player.y==y){
    ////  //if(y==player.y&&speed<0&&player.x<x || y==player.y&&speed>0&&player.x>x){
    //    speed += TRIGGERED_SPEED_MULTIPLIER;
    ////  //}
    //}
    
    x += speed;
      
  }
	// HINT: Player Detection in update()
	/*
	float currentSpeed = speed
	If player is on the same row with me AND (it's on my right side when I'm going right OR on my left side when I'm going left){
		currentSpeed *= TRIGGERED_SPEED_MULTIPLIER
	}
	*/
}
