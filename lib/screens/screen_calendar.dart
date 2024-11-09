import 'package:adventskalender/screens/screen_settings.dart';
import 'package:flutter/material.dart';

import '../classes/class_calendar.dart';
import '../classes/class_door.dart';
import 'screen_door.dart';
import 'screen_early_door.dart';

class AdventCalendarScreen extends StatelessWidget {
  final int year;
  late final AdventCalendar calendar;

  AdventCalendarScreen({super.key, required this.year}) { // Der Adventskalender mit den 24 Türchen
    calendar = AdventCalendar(year: year);
  }

  BoxDecoration _buildBoxDecoration(bool validToOpen, Color primaryColor, Color secundaryColor) {
    return BoxDecoration(
      color: validToOpen ? secundaryColor : primaryColor,
      border: validToOpen ? Border.all(color: primaryColor) : Border.all(color: secundaryColor),
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: calendar.primaryColor,
        title: Text(calendar.title),
        foregroundColor: calendar.secundaryColor,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: calendar.secundaryColor,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => Settings())
              );
            },
          )
        ],
      ),
      body: Container(
        // Setze das Hintergrundbild
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(calendar.backgroundImage), // Pfad zu deinem Bild
            fit: BoxFit.cover, // Bild skaliert auf die Bildschirmgröße
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, // 4 Spalten für 24 Türchen
                    crossAxisSpacing: 10.0, // Türchen links rechts
                    mainAxisSpacing: 10.0, // Türchen oben unten
                  ),
                  itemCount: 24,
                  itemBuilder: (context, index) {
                    final door = calendar.getDoors()[index]; // Türchen aus dem Kalender
                    return AdventDoorWidget(door: door, buildBoxDecoration: _buildBoxDecoration,); // Türchen-Widget
                  },
                ),
              ),
              if (DateTime.now().isAfter(DateTime(year, 12, 24))) // Wenn der 24. Dezember vorbei ist
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    decoration: _buildBoxDecoration(true, calendar.primaryColor, calendar.secundaryColor),
                    child: SizedBox(
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          final door = calendar.getDoors()[0];
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => AdventCalendarEarlyDoorScreen(door: door),
                            ),
                          );
                        },
                        child: Text('Bonus Türchen', style: TextStyle(fontSize: 20, color: calendar.primaryColor)),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class AdventDoorWidget extends StatefulWidget {
  final AdventCalendarDoor door;
  final BoxDecoration Function(bool, Color, Color) buildBoxDecoration;

  const AdventDoorWidget({super.key, required this.door, required this.buildBoxDecoration});

  @override
  // ignore: library_private_types_in_public_api
  _AdventDoorWidgetState createState() => _AdventDoorWidgetState();
}

class _AdventDoorWidgetState extends State<AdventDoorWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //setState(() {
          //widget.door.openDoor(); // Türchen öffnen
        //});

        // Ein Dialogfenster anzeigen, wenn das Türchen geöffnet wird
        if (widget.door.validToOpen) { // Wenn Türchen geöffnet werden darf
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => AdventCalendarDoorScreen(door: widget.door))
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => AdventCalendarEarlyDoorScreen(door: widget.door))
          );
        }
      },
      child: Container(
        decoration: widget.buildBoxDecoration(widget.door.validToOpen, widget.door.primaryColor, widget.door.secundaryColor),
        child: Center(
          child: Text(
            '${widget.door.day}',
            style: TextStyle(
              color: widget.door.validToOpen ? widget.door.primaryColor : widget.door.secundaryColor, // Geöffnete Türe schreiben rot
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}