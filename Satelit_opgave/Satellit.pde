ArrayList<satellite> satList = new ArrayList<satellite>();
class satellite extends object {
  ArrayList<ArrayList> cor2 = new ArrayList<ArrayList>();
  ArrayList<Float> cor = new ArrayList<Float>();
  float cooldown = 0;
  satellite(Integer getID) {
    super(getID);
    objShape = SPHERE;
    size = 50;
    texture = loadImage("white.jpg");
    cor2 = newLoadJSON(ID);
    satList.add(this);
  }
  void step() {
    if (cooldown >= time*60) {
      cor2 = newLoadJSON(ID);
      if (ID == 5) {
      }
      cooldown = 0;
    }
    for (int j =0; j<time; j++) {
      if (cooldown == 60*j) {
        cor = cor2.get(j);
      }
    }
    //Jeg ved virkelige ikke hvorfor jeg skal gøre dette, men ellers virker det ikke. Jeg tror der har noget med at coordinatsystemerne ikke er det samme.
    lat = -cor.get(1);
    longi = -cor.get(0);
    alt = cor.get(2);
    loc.x = (earthSize*scale+alt)*cos(radians(lat))*cos(radians(longi));
    loc.y = (earthSize*scale+alt)*cos(radians(lat))*sin(radians(longi));
    loc.z = (earthSize*scale+alt)*sin(radians(lat));
    cooldown++;
  }
}
