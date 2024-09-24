import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            const SizedBox(),
            const Text('Name of City: '),
            const Text('Current Temp: '),
            const Text('Weather Condition'),
            TextField(
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
                onPressed: () {}, child: const Text('Fetch Weather')),
          ],
        ),
      ),
    );
  }
}
