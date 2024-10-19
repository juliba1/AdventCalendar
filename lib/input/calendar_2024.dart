import 'package:adventskalender/input/calendar.dart';
import 'package:flutter/material.dart';

class Calendar2024 extends Calendar{
  Calendar2024() {
    // Initialisiere spezifische Werte für 2024
    setTitle("Adventskalender 2024");
    setHeaders(_getHeaders());
    setTexts(_getTexts());
    setPictures(_getPictures());

    backgroundImage = '';

    primaryColor = Colors.red;
    secundaryColor = Colors.white;
    setColors(primaryColor, secundaryColor);

    earlyPicture = "assets/images/2024/TooEarlyPic.png";
    earlyHeader = "Zu früh Header";
    earlyText = "Zu früh Text";
  }

  List<String> _getHeaders() {
    return [
      'Header Tür 1',
      'Header Tür 2',
      'Header Tür 3',
      'Header Tür 4',
      'Header Tür 5',
      'Header Tür 6',
      'Header Tür 7',
      'Header Tür 8',
      'Header Tür 9',
      'Header Tür 10',
      'Header Tür 11',
      'Header Tür 12',
      'Header Tür 13',
      'Header Tür 14',
      'Header Tür 15',
      'Header Tür 16',
      'Header Tür 17',
      'Header Tür 18',
      'Header Tür 19',
      'Header Tür 20',
      'Header Tür 21',
      'Header Tür 22',
      'Header Tür 23',
      'Header Tür 24',
    ];
  }

  List<String> _getTexts() {
    return [
      'Text Tür 1',
      'Text Tür 2',
      'Text Tür 3',
      'Text Tür 4',
      'Text Tür 5',
      'Text Tür 6',
      'Text Tür 7',
      'Text Tür 8',
      'Text Tür 9',
      'Text Tür 10',
      'Text Tür 11',
      'Text Tür 12',
      'Text Tür 13',
      'Text Tür 14',
      'Text Tür 15',
      'Text Tür 16',
      'Text Tür 17',
      'Text Tür 18',
      'Text Tür 19',
      'Text Tür 20',
      'Text Tür 21',
      'Text Tür 22',
      'Text Tür 23',
      'Text Tür 24',
    ];
  }

  List<String> _getPictures(){
    pictures.add("assets/images/2024/door1.png");
    pictures.add("assets/images/2024/door2.png");
    pictures.add("assets/images/2024/door3.png");
    pictures.add("assets/images/2024/door4.png");
    pictures.add("assets/images/2024/door5.png");
    pictures.add("assets/images/2024/door6.png");
    pictures.add("assets/images/2024/door7.png");
    pictures.add("assets/images/2024/door8.png");
    pictures.add("assets/images/2024/door9.png");
    pictures.add("assets/images/2024/door10.png");
    pictures.add("assets/images/2024/door11.png");
    pictures.add("assets/images/2024/door12.png");
    pictures.add("assets/images/2024/door13.png");
    pictures.add("assets/images/2024/door14.png");
    pictures.add("assets/images/2024/door15.png");
    pictures.add("assets/images/2024/door16.png");
    pictures.add("assets/images/2024/door17.png");
    pictures.add("assets/images/2024/door18.png");
    pictures.add("assets/images/2024/door19.png");
    pictures.add("assets/images/2024/door20.png");
    pictures.add("assets/images/2024/door21.png");
    pictures.add("assets/images/2024/door22.png");
    pictures.add("assets/images/2024/door23.png");
    pictures.add("assets/images/2024/door24.png");

    return pictures;
  }
}