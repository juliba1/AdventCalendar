import 'package:flutter/material.dart';

import '../classes/class_calendar.dart';
import '../classes/class_door.dart';

/* Screen für offenes Türchen */

class AdventCalendarDoorScreen extends StatelessWidget {
  final AdventCalendarDoor door;

  const AdventCalendarDoorScreen({super.key, required this.door});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return WillPopScope(
        onWillPop: () async {
      if (door.day == 24) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SpecialScreen(door: door,),
          ),
        );
        return false;
      }
      return true;
    },
    child: Scaffold(
      appBar: AppBar(
        backgroundColor: door.primaryColor,
        title: Text('Türchen ${door.day}'),
        foregroundColor: door.secundaryColor,
        centerTitle: true,
      ),
      body: Container(
        // Setze das Hintergrundbild
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(door.backgroundImage), // Pfad zu deinem Bild
            fit: BoxFit.cover, // Bild skaliert auf die Bildschirmgröße
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Padding für den gesamten Inhalt
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FullScreenImage(imagePath: door.picture, backColor: door.primaryColor),
                    ),
                  );
                },
                // Bildbox mit dynamischer Größe basierend auf der Bildschirmgröße
                child: Container(
                  width: screenWidth, // 80% der Bildschirmbreite
                  height: screenHeight * 0.45, // 30% der Bildschirmhöhe
                  padding: const EdgeInsets.all(10), // Padding um das Bild
                  child: Center(
                    child: Image.asset(
                      door.picture, // Bildpfad
                      fit: BoxFit.contain, // Das Bild wird nicht gestreckt, sondern passt sich an
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 0), // Abstand zwischen Bild und Header
              // Fetter Header unter dem Bild
              Padding(
                padding: const EdgeInsets.all(0), // Padding um den Header
                child: Container(
                  padding: const EdgeInsets.all(10.0), // Padding innerhalb des Containers
                  decoration: BoxDecoration(
                    color: door.primaryColor, // Hintergrundfarbe mit Opazität
                    borderRadius: BorderRadius.circular(10), // Abgerundete Ecken
                  ),
                  child: Text(
                    door.header,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: door.secundaryColor,
                    ),
                    textAlign: TextAlign.center, // Text zentrieren
                  ),
                ),
              ),
              const SizedBox(height: 0), // Abstand zwischen Header und Textfeld
              // Mehrzeiliges Textfeld
              Padding(
                padding: const EdgeInsets.all(5), // Padding um das Textfeld
                child: Container(
                  padding: const EdgeInsets.all(5.0), // Padding innerhalb des Containers
                  decoration: BoxDecoration(
                    color: door.primaryColor, // Hintergrundfarbe mit Opazität
                    borderRadius: BorderRadius.circular(10), // Abgerundete Ecken
                  ),
                  child: Text(
                    door.text,
                    style: TextStyle(
                      fontSize: 16,
                      color: door.secundaryColor,
                    ),
                    textAlign: TextAlign.center,
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

class FullScreenImage extends StatelessWidget {
  final String imagePath;
  final Color backColor;

  const FullScreenImage({super.key, required this.imagePath, required this.backColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: InteractiveViewer(
            panEnabled: true, // Enable panning
            minScale: 0.5, // Minimum zoom scale
            maxScale: 4.0, // Maximum zoom scale
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}

class SpecialScreen extends StatelessWidget {
  final AdventCalendarDoor door;
  late final AdventCalendar calendar;

  SpecialScreen({super.key, required this.door}){
    calendar = AdventCalendar(year: door.year);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: door.primaryColor,
        title: const Text('Special Screen'),
        foregroundColor: door.secundaryColor,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(door.backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: GestureDetector(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: InteractiveViewer(
                    panEnabled: true, // Enable panning
                    minScale: 0.5, // Minimum zoom scale
                    maxScale: 4.0, // Maximum zoom scale
                    child: SizedBox(
                      width: screenWidth,
                      height: screenHeight * 0.5, // Set height to 60% of screen height
                      child: Image.asset(
                        calendar.thankYouPicture,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5), // Space between image and text
                Padding(
                  padding: const EdgeInsets.all(15), // Padding around the text
                  child: Container(
                    padding: const EdgeInsets.all(5.0), // Padding inside the container
                    decoration: BoxDecoration(
                      color: calendar.primaryColor, // Background color with opacity
                      borderRadius: BorderRadius.circular(10), // Rounded corners
                    ),
                    child: Text(
                      calendar.thankYouText,
                      style: TextStyle(
                        color: calendar.secundaryColor,
                        fontSize: 18,
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
