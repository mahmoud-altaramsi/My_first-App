import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GameGrid extends StatelessWidget {
  String iconGrid;
  GameGrid({required this.iconGrid, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: CircleAvatar(
        // radius: 15,
        backgroundColor: Color.fromARGB(255, 255, 250, 221),
        backgroundImage: AssetImage('assets/gamegrid/$iconGrid'),
      ),
    );
  }
}
