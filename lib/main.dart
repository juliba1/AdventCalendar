import 'package:flutter/material.dart';

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
      home: AdventCalendarScreen(year: 2024),
    );
  }
}
