import 'package:flutter/material.dart';
import 'gamegrid.dart';

class gamevs extends StatelessWidget {
  const gamevs({
    super.key,
    required this.GridCorect,
  });

  final Map GridCorect;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          backgroundColor: Color.fromARGB(255, 255, 250, 221),
          radius: 35,
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: GridCorect.length,
            physics: BouncingScrollPhysics(),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            itemBuilder: (context, index) {
              return GameGrid(iconGrid: GridCorect.values.toList()[index]);
            },
          ),
        ),
        Image(
            image: AssetImage('assets/gamegrid/tyu2.png'),
            color: Color.fromARGB(255, 255, 250, 221)),
        CircleAvatar(
          backgroundColor: Color.fromARGB(255, 255, 250, 221),
          radius: 35,
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: GridCorect.length,
            physics: BouncingScrollPhysics(),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            itemBuilder: (context, index) {
              return GameGrid(iconGrid: GridCorect.keys.toList()[index]);
            },
          ),
        ),
      ],
    );
  }
}
