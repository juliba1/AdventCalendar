import 'package:flutter/material.dart';

import '../classes/class_door.dart';

/* Screen für zu früh geöffnetes Türchen */

class AdventCalendarEarlyDoorScreen extends StatelessWidget {
  final AdventCalendarDoor door;

  const AdventCalendarEarlyDoorScreen({super.key, required this.door});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: door.primaryColor,
        title: const Text('Du bist zu früh!'),
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
              // Bildbox mit dynamischer Größe basierend auf der Bildschirmgröße
              Container(
                width: screenWidth, // 80% der Bildschirmbreite
                height: screenHeight * 0.5, // 30% der Bildschirmhöhe
                padding: const EdgeInsets.all(15), // 20 Pixel Padding
                child: Center(
                  child: Image.asset(
                    door.earlyPicture, // Bildpfad
                    fit: BoxFit.contain, // Das Bild wird nicht gestreckt, sondern passt sich an
                  ),
                ),
              ),
              // Fetter Header unter dem Bild
              Text(
                door.earlyHeader,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: door.secundaryColor,
                    backgroundColor: door.primaryColor
                ),
                textAlign: TextAlign.center, // Text zentrieren
              ),
              const SizedBox(height: 10), // Abstand zwischen Header und Textfeld
              // Mehrzeiliges Textfeld
              Text(
                door.earlyText,
                style: TextStyle(
                    fontSize: 17,
                    color: door.secundaryColor,
                    backgroundColor: door.primaryColor
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}