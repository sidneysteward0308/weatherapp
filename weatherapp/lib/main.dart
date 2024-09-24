import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: ForcastWeather(),
  ));
}
String weather = "";
int temperature = 0;

void generateWeather() {
  int temperatureRandomizer = Random().nextInt(15) + 15;
  int weatherRandomizer = Random().nextInt(2);
  temperature = temperatureRandomizer;
  if (weatherRandomizer == 0){
    weather = "Sunny";
  } else if (weatherRandomizer == 1) {
    weather = "Cloudy";
  } else {
    weather = "Rainy";
  }
}
