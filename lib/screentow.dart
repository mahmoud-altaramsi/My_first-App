import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ScreenTow extends StatelessWidget {
  String url;
  ScreenTow({super.key,required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.deepOrange)),
          onPressed: () {
            launchUrl(
              Uri.parse(url),
            );
          },
          child: Text('Go To sochial'),
        ),
      ),
    );
  }
}
