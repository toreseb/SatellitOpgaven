float earthSize = 6731;
class earth extends object{
  earth(int getID ,String getName){
    super(getID);
    objShape = SPHERE;
    size = earthSize;
    name = getName;
    texture = loadImage("earthmapV.3.jpg");
  }
}
