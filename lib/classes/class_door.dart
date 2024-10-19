/* Klasse für ein einzelnes Türchen mit verhalten */

import 'package:flutter/material.dart';

class AdventCalendarDoor {
  final int day; // Nummer des Türchens
  final int year; // Jahr des Türchens

  bool validToOpen; // Gibt an, ob das Türchen geöffnet werden darf

  String header; // Header für den Text
  String text; // Der Inhalt des Türchens (Text, Bild etc.)
  String picture; // Bild des Türchens

  final String earlyPicture; // Bild für zu Früh
  final String earlyHeader;
  final String earlyText;

  final Color primaryColor;
  final Color secundaryColor;

  final String backgroundImage;


  AdventCalendarDoor({
    required this.day,
    required this.year,
    this.validToOpen = false,
    required this.header,
    required this.text,
    required this.picture,
    required this.earlyPicture,
    required this.earlyHeader,
    required this.earlyText,
    required this.primaryColor,
    required this.secundaryColor,
    required this.backgroundImage
  });

  void setDoorValidation(){
    DateTime doorDate = DateTime(year, 12, day);

    if (!doorDate.isBefore(DateTime.now())) { // Türchen öffnen
      validToOpen = true;
    } // else nicht valid
  }
}
