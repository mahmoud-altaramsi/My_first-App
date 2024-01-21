import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class IconSochial extends StatelessWidget {
  String icon, linkIcons;
  IconSochial({required this.icon, required this.linkIcons, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage("assets/$icon"),
        ),
      ),
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.deepPurple,
          context: context,
          builder: (context) => ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.deepOrange)),
            onPressed: () {
              launchUrl(
                Uri.parse(linkIcons),
              );
            },
            child: Text('Go To $icon'),
          ),
        );
      },
    );
  }
}
