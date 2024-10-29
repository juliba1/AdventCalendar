import 'package:adventskalender/input/calendar.dart';
import 'package:flutter/material.dart';
import 'class_door.dart';

import '../input/calendar_2022.dart';
import '../input/calendar_2023.dart';
import '../input/calendar_2024.dart';

/* Klasse um die einzelnen Türen mit ihren Werten zu setzen */

class AdventCalendar {
  String title = "";
  final int year;
  Color primaryColor = Colors.black;
  Color secundaryColor = Colors.white;
  List<AdventCalendarDoor> doors = [];
  String backgroundImage = "";
  String waitingPicture = "";

  AdventCalendar({required this.year}) {
    switch (year){
      case 2022:
        get2022();
        break;
      case 2023:
        get2023();
        break;
      case 2024:
        get2024();
        break;
      default:
        break;
    }
  }

  List<AdventCalendarDoor> getDoors() {
    return doors;
  }

  void get2022(){
    Calendar2022 calendar = Calendar2022();

    title = calendar.title;
    primaryColor = calendar.primaryColor;
    secundaryColor = calendar.secundaryColor;
    backgroundImage = calendar.backgroundImage;

    setDoors(calendar);
  }

  void get2023(){
    Calendar2023 calendar = Calendar2023();

    title = calendar.title;
    primaryColor = calendar.primaryColor;
    secundaryColor = calendar.secundaryColor;
    backgroundImage = calendar.backgroundImage;

    setDoors(calendar);
  }

  void get2024(){
    Calendar2024 calendar = Calendar2024();

    title = calendar.title;
    primaryColor = calendar.primaryColor;
    secundaryColor = calendar.secundaryColor;
    backgroundImage = calendar.backgroundImage;
    waitingPicture = calendar.waitingPicture;

    setDoors(calendar);
  }
  
  void setDoors(Calendar calendar) {
    for (int i = 1; i <= 24; i++) {
      AdventCalendarDoor newDoor = AdventCalendarDoor(
          day: i,
          year: year,
          header: calendar.headers[i-1],
          text: calendar.texts[i-1],
          picture: calendar.pictures[i-1],
          earlyPicture: calendar.earlyPicture,
          earlyHeader: calendar.earlyHeader,
          earlyText: calendar.earlyText,
          primaryColor: primaryColor,
          secundaryColor: secundaryColor,
          backgroundImage: backgroundImage
      );

      newDoor.setDoorValidation();

      doors.add(newDoor);
    }
  }
}
