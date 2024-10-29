import 'package:flutter/material.dart';

import 'classes/class_calendar.dart';
import 'screens/screen_calendar.dart';

/*
* flutter Emulator commands:
*   flutter emulators --launch Selinas_Handy_Grose
* */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advent Calendar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        home: DateTime.now().isBefore(DateTime(DateTime.now().year, 11, 15)) // Vor dem 15.11. des aktuellen Jahres wird der Adventskalender des Vorjahres angezeigt
            ? AdventCalendarScreen(year: DateTime.now().year - 1) // Zeige den Adventskalender des Vorjahres
            : DateTime.now().isAfter(DateTime(DateTime.now().year, 11, 30)) // Nach dem 30.11. des aktuellen Jahres wird der Adventskalender des aktuellen Jahres angezeigt
            ? AdventCalendarScreen(year: DateTime.now().year) // Zeige den Adventskalender des aktuellen Jahres
            : WaitingScreen(year: DateTime.now().year) // Zeige den Wartebildschirm
    );
  }
}

class WaitingScreen extends StatelessWidget {
  final int year;
  late final AdventCalendar calendar;

  WaitingScreen({super.key, required this.year}) {
    calendar = AdventCalendar(year: year);
  }

  @override
  Widget build(BuildContext context) {
    int daysToWait = DateTime(year, 12, 1).difference(DateTime.now()).inDays + 1;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(calendar.backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: GestureDetector(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: InteractiveViewer(
                    panEnabled: true, // Enable panning
                    minScale: 0.5, // Minimum zoom scale
                    maxScale: 4.0, // Maximum zoom scale
                    child: Image.asset(
                      calendar.waitingPicture,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 20), // Space between image and text
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: calendar.primaryColor, // Background color with opacity
                      borderRadius: BorderRadius.circular(10), // Rounded corners
                    ),
                    child: Text(
                      'Du musst leider noch $daysToWait Tag(e) warten, bis es hier losgeht.',
                      style: TextStyle(
                        color: calendar.secundaryColor,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
