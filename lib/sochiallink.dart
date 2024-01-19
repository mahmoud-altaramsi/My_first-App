import 'package:flutter/material.dart';

import 'sochial.dart';

class SochialLink extends StatelessWidget {
  const SochialLink({
    super.key,
    required this.ListOfSochial,
  });

  final Map<String, String> ListOfSochial;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: double.infinity,
      // color: Colors.black,
      // margin: EdgeInsets.all(),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: ListOfSochial.length,
        shrinkWrap: true,
        padding: EdgeInsets.all(5),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Sochial(
              imageSochial: ListOfSochial.keys.toList()[index],
              linkSochial: ListOfSochial.values.toList()[index]);
        },
      ),
    );
  }
}