import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vapp/screentow.dart';
import 'widget/sochiallink.dart';

// ignore: must_be_immutable
class PageOne extends StatelessWidget {
  Map<String, String> ListOfSochial = {
    'fac.png': 'https://www.facebook.com/gemy68000?mibextid=ZbWKwL',
    'tel.png': 'https://telegram.me/+201030674159',
    'yout.png': 'https://www.youtube.com/channel/UCnM2XsWBfs-txd-ojFTpZvw',
    'wh.png': 'https://wa.me/+201030674159',
    'inst.png':
        'https://www.instagram.com/gamalkhaled964?igsh=MTN0bnB5eWdubjNmbA==',
    'tw.png': 'https://twitter.com/?lang=ar'
  };
  PageOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 226, 181),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 65,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/circelGamal.jpeg'),
                backgroundColor: Colors.pink,
                radius: 60,
              ),
              Text(
                'Gamal Khalid Al-Taramsi',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '+201030674159',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {
                      launchUrl(Uri.parse('tel:+201030674159'));
                    },
                    icon: Icon(
                      Icons.phone,
                      size: 25,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              GridView.builder(
                padding: EdgeInsets.all(25),
                shrinkWrap: true,
                itemCount: ListOfSochial.length,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return IconSochial(
                      icon: ListOfSochial.keys.toList()[index],
                      linkIcons: ListOfSochial.values.toList()[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
