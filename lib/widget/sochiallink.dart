import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vapp/screentow.dart';

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
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ScreenTow(url: linkIcons)),
        );
      },
    );
  }
}
