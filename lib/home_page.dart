import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final int day = 30;
  final String name = "Fahad";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
        body: Center(
          child: Container(
            child: Text("I'm starting $day days flutter course haha $name"),
          ),
        ),
        drawer: Drawer(),
      );
  }
}