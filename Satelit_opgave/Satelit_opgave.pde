
import java.lang.reflect.Array; 
object obj;

Integer time = 10; //Mængden af tidsenheder som der bliver trukket fra ny2o, et lavere tal vil få programmet til at lagge tiere. Kan være op til 300
float scale = 0.05;

void setup(){
  frameRate(60);
  size(1000,1000,P3D);
  new earth(0,"earth");
  
  // Her kan der indsættes så mange satelliter som man har løst til, de skal bare eksistere
  new satellite(25544);
  new satellite(5);
  new satellite(46382);
}

void draw(){
  background(0);
  dragging();
  zoom();
  runStep();
  runDrawSelf();
}
