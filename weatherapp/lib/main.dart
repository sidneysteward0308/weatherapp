import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    home: ForcastWeather(),
  ));
}

class ForcastWeather extends StatefulWidget {
  const ForcastWeather({super.key});

  @override
  State<ForcastWeather> createState() {
    return _ForcastWeatherState();
  }
}

class _ForcastWeatherState extends State<ForcastWeather> {
  TextEditingController yourController = TextEditingController();
  String enteredText = "";

  String weather = "";
  int temperature = 0;

  void generateWeather() {
    int temperatureRandomizer = Random().nextInt(15) + 15;
    int weatherRandomizer = Random().nextInt(2);
    temperature = temperatureRandomizer;
    if (weatherRandomizer == 0) {
      weather = "Sunny";
    } else if (weatherRandomizer == 1) {
      weather = "Cloudy";
    } else {
      weather = "Rainy";
    }
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Recipe APP',
          style: GoogleFonts.oxygen(),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
            
              width: 400,
              height: 500,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('Monday'),
                    Text(
                      'Name of City: $enteredText',
                      
                    ),
                    Text('Current Temp: $temperature'),
                    Text('Weather Condition $weather'),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('Tuesday'),
                    Text('Name of City: $enteredText'),
                    Text('Current Temp: $temperature'),
                    Text('Weather Condition $weather'),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('Wednesday'),
                    Text('Name of City: $enteredText'),
                    Text('Current Temp: $temperature'),
                    Text('Weather Condition $weather'),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('Thursay'),
                    Text('Name of City: $enteredText'),
                    Text('Current Temp: $temperature'),
                    Text('Weather Condition $weather'),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('Friday'),
                    Text('Name of City: $enteredText'),
                    Text('Current Temp: $temperature'),
                    Text('Weather Condition $weather'),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('Saturday'),
                    Text('Name of City: $enteredText'),
                    Text('Current Temp: $temperature'),
                    Text('Weather Condition $weather'),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('Sunday'),
                    Text('Name of City: $enteredText'),
                    Text('Current Temp: $temperature'),
                    Text('Weather Condition $weather'),
                  ],
                ),
              ),
            ),
            TextField(
              controller: yourController,
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(255, 239, 239, 239),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  // borderSide: BorderSide.none,
                ),
                hintText: 'City Name',
              ),
              style: GoogleFonts.oxygen(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    enteredText = yourController.text;
                    generateWeather();
                  });
                },
                child: const Text('Fetch Weather')),
          ],
        ),
      ),
    );
  }
}
