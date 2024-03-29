import java.util.Date; //Date Conversation, UNIX Time Stamp from Jan 1, 1970

//Global Variables
String mainWeatherEdmonton, descriptionEdmonton, iconEdmonton, countryEdmonton, nameEdmonton;
float tempEdmonton, tempMinEdmonton, tempMaxEdmonton;
int sunriseEdmonton, sunsetEdmonton;
Date apiCurrentDateCall;

String mainWeatherCalgary, descriptionCalgary, iconCalgary, countryCalgary, nameCalgary;
float tempCalgary, tempMinCalgary, tempMaxCalgary;
int apiCallTimeCalgary, sunriseCalgary, sunsetCalgary;

String mainWeatherRedDeer, descriptionRedDeer, iconRedDeer, countryRedDeer, nameRedDeer;
float tempRedDeer, tempMinRedDeer, tempMaxRedDeer;
int apiCallTimeRedDeer, sunriseRedDeer, sunsetRedDeer;

void unwrapToVariables() {
  currentEdmonton();
  currentCalgary();
  currentRedDeer();
}

Date humanDate(long unixTime) {
  Date dateHuman = new Date(unixTime*1000); //convert from milliseconds
  return dateHuman;
}

void currentEdmonton() {
  JSONArray weatherEdmonton = jsonCurrentEdmonton.getJSONArray("weather"); //Unwrapping

  JSONObject allEdmonton = weatherEdmonton.getJSONObject(0); //Unwrap {}
  mainWeatherEdmonton = allEdmonton.getString("main");
  descriptionEdmonton = allEdmonton.getString("description");
  iconEdmonton = allEdmonton.getString("icon");

  JSONObject mainEdmonton = jsonCurrentEdmonton.getJSONObject("main"); //Unwrap {}
  tempEdmonton = mainEdmonton.getFloat("temp");
  tempMinEdmonton = mainEdmonton.getFloat("temp_min");
  tempMaxEdmonton = mainEdmonton.getFloat("temp_max");

  long apiCallTimeEdmonton = jsonCurrentEdmonton.getInt("dt"); //int not enough memory, needs long (float & double)
  apiCurrentDateCall = humanDate(apiCallTimeEdmonton);

  JSONObject sysEdmonton = jsonCurrentEdmonton.getJSONObject("sys"); //Unwrap {}
  countryEdmonton = sysEdmonton.getString("country");
  sunriseEdmonton = sysEdmonton.getInt("sunrise");
  sunsetEdmonton = sysEdmonton.getInt("sunset");

  nameEdmonton = jsonCurrentEdmonton.getString("name");
}

void currentCalgary() {
  JSONArray weatherCalgary = jsonCurrentCalgary.getJSONArray("weather"); //Unwrapping

  JSONObject allCalgary = weatherCalgary.getJSONObject(0); //Unwrap {}
  mainWeatherCalgary = allCalgary.getString("main");
  descriptionCalgary = allCalgary.getString("description");
  iconCalgary = allCalgary.getString("icon");

  JSONObject mainCalgary = jsonCurrentCalgary.getJSONObject("main"); //Unwrap {}
  tempCalgary = mainCalgary.getFloat("temp");
  tempMinCalgary = mainCalgary.getFloat("temp_min");
  tempMaxCalgary = mainCalgary.getFloat("temp_max");

  apiCallTimeCalgary = jsonCurrentCalgary.getInt("dt");

  JSONObject sysCalgary = jsonCurrentCalgary.getJSONObject("sys"); //Unwrap {}
  countryCalgary = sysCalgary.getString("country");
  sunriseCalgary = sysCalgary.getInt("sunrise");
  sunsetCalgary = sysCalgary.getInt("sunset");

  nameCalgary = jsonCurrentCalgary.getString("name");
}

void currentRedDeer() {
  JSONArray weatherRedDeer = jsonCurrentVancouver.getJSONArray("weather"); //Unwrapping

  JSONObject allRedDeer = weatherRedDeer.getJSONObject(0); //Unwrap {}
  mainWeatherRedDeer = allRedDeer.getString("main");
  descriptionRedDeer = allRedDeer.getString("description");
  iconRedDeer = allRedDeer.getString("icon");

  JSONObject mainRedDeer = jsonCurrentVancouver.getJSONObject("main"); //Unwrap {}
  tempRedDeer = mainRedDeer.getFloat("temp");
  tempMinRedDeer = mainRedDeer.getFloat("temp_min");
  tempMaxRedDeer = mainRedDeer.getFloat("temp_max");

  apiCallTimeRedDeer = jsonCurrentVancouver.getInt("dt");

  JSONObject sysRedDeer = jsonCurrentVancouver.getJSONObject("sys"); //Unwrap {}
  countryRedDeer = sysRedDeer.getString("country");
  sunriseRedDeer = sysRedDeer.getInt("sunrise");
  sunsetRedDeer = sysRedDeer.getInt("sunset");

  nameRedDeer = jsonCurrentVancouver.getString("name");}
