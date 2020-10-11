PVector drag = new PVector();
PVector dragged = new PVector();
ArrayList<Character> keyboard = new ArrayList<Character>();
boolean keyDown = false;
void keyPressed() {
  keyDown  =true;
  if (!keyboard.contains(key)) {
    keyboard.add(key);
  }
}
void keyReleased() {
  if (keyboard.contains(key)) {
    keyboard.remove(keyboard.indexOf(key));
  }
}


boolean keyDown(char input) {
  if (keyboard.contains(input)) {
    return true;
  }
  return false;
}

void dragging(){
  if (mousePressed){
    if(mouseButton == LEFT){
      drag.x = (mouseX-pmouseX);
      drag.y = (mouseY-pmouseY);
    }
  }
  dragged.add(drag.div(200)); 
}


void zoom(){
  if(keyDown('o')||keyDown('O')){
    scale +=0.0005;
  }
  if(keyDown('p')||keyDown('P')){
    scale -=0.0005;
  }
  if(scale <= 0){ scale = 0;}
  
}
