ArrayList<object> objList = new ArrayList<object>();
class object {
  int offset = 0;
  int ID;; String name;
  float lat;
  float longi;
  float alt;
  PVector loc = new PVector();
  PShape physicalObj;
  PImage texture;
  float size;
  int objShape;
  object(Integer getID) {
    ID = getID;
    objList.add(this);
  }
  void step() {
  }
  void drawSelf() {
    pushMatrix();
    translate(width/2, height/2);
    rotateY(dragged.x);
    //rotateX(-dragged.y);  Rotation i x-retningen kan slåes til, men det er meget svært at styre.
    translate(loc.x,loc.y,loc.z);
    noStroke();
    makeObject();
    shape(physicalObj);
    popMatrix();
  }
  void makeObject() {
    physicalObj = createShape(objShape, size*scale);
    physicalObj.setTexture(texture);
  }
}
void runStep() {
  for (object i : objList) {
    i.step();
  }
}

void runDrawSelf() {
  for (object i : objList) {
    i.drawSelf();
  }
}
