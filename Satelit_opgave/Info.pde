
int nToSend;
JSONObject json;
JSONObject j;
JSONArray tle;
ArrayList<ArrayList> newLoadJSON(Integer ID) {
  float lat;
  float longi;
  float alt;
  JSONObject pos;
  ArrayList<ArrayList> corList = new ArrayList<ArrayList>();
  j = loadJSONObject("https://www.n2yo.com/rest/v1/satellite/positions/"+ID.toString()+"/0/0/0/"+time.toString()+"/&apiKey=ZWA4PZ-ZGAGS5-ADUGHJ-4KJ7");
  tle = j.getJSONArray("positions");

  for (int i = 0; i<time; i++) {
    ArrayList<Float> cor = new ArrayList<Float>();
    pos = tle.getJSONObject(i);
    lat = pos.getFloat("satlatitude");
    longi = pos.getFloat("satlongitude");
    alt = pos.getFloat("sataltitude")*scale;
    cor.add(lat);
    cor.add(longi);
    cor.add(alt);
    corList.add(cor);
  }
  return corList; //returner en ArrayListe med ArrayLister
}
