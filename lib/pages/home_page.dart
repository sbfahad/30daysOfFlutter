import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final int day = 30;
  final String name = "Fahad";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        textScaleFactor: 1.2,
        ),
      ),
        body: Center(
          child: Container(
            child: Text("I'm starting $day days flutter course haha $name",
              style: TextStyle(
                fontSize: 16,
                color: Colors.lightGreen,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        drawer: Drawer(),
      );
  }
}