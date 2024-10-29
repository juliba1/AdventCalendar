import 'package:adventskalender/screens/screen_calendar.dart';
import 'package:flutter/material.dart';

import '../input/calendar.dart';

class Settings extends StatelessWidget {
  // Liste mit den Jahren (Adventskalender)
  final List<int> calendarYears = Calendar.getCalenderYears();

  Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Übersicht'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 Spalten
            crossAxisSpacing: 10.0, // Abstand zwischen Spalten
            mainAxisSpacing: 10.0,  // Abstand zwischen Zeilen
          ),
          itemCount: calendarYears.length, // Anzahl der Buttons basierend auf der Liste
          itemBuilder: (context, index) {
            final year = calendarYears[index]; // Das Jahr für diesen Button
            return ElevatedButton(
              onPressed: () {
                // OnClick-Funktion für den Button
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => AdventCalendarScreen(year: year))
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Abgerundete Ecken
                ),
                backgroundColor: Colors.lightBlueAccent, // Button-Farbe
              ),
              child: Text(
                '$year', // Dynamischer Text für das Jahr
                style: const TextStyle(fontSize: 18),
              ),
            );
          },
        ),
      ),
    );
  }
}