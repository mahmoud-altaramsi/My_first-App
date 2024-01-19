import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class Sochial extends StatelessWidget {
  String linkSochial, imageSochial;
  Sochial({required this.imageSochial, required this.linkSochial, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: CircleAvatar(
          // radius: 60,
          backgroundImage: AssetImage("assets/$imageSochial"),
          backgroundColor: Colors.transparent,
        ),
      ),
      
      onTap: () {
        launchUrl(Uri.parse(linkSochial),mode: LaunchMode.externalApplication);
      },
    );
  }
}
