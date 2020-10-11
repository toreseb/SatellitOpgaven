/*

Prøvede at sætte den sidste værdi ind som en "Prediktion" på hvor den ville være næste gang, men det virkede ikke ordenligt.

ghostSatellite gSat;
class ghostSatellite extends satellite {
  ArrayList<Float> gLoc = new ArrayList<Float>();
  ghostSatellite(Integer getID) {
    super(getID);
    offset = time;
    texture = loadImage("blue.png");
  }
  
  void step(){
    lat = (float)cor2.get(offset).get(0);
    longi = (float)cor2.get(offset).get(2);
    alt = (float)cor2.get(offset).get(3);
    loc.x = (earthSize+alt)*cos(radians(lat))*cos(radians(longi));
    loc.y = (earthSize+alt)*cos(radians(lat))*sin(radians(longi));
    loc.z = (earthSize+alt)*sin(radians(lat));
    println(loc);
  }
}

*/
