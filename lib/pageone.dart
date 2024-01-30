import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vapp/providerT.dart';
import 'package:vapp/widget/iconGrid.dart';
import 'package:tuple/tuple.dart';

// ignore: must_be_immutable
class PageOne extends StatefulWidget {
  PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  final Map ListOfSochial = {
    'fac.png': 'https://www.facebook.com/gemy68000?mibextid=ZbWKwL',
    'tel.png': 'https://telegram.me/+201030674159',
    'yout.png': 'https://www.youtube.com/channel/UCnM2XsWBfs-txd-ojFTpZvw',
    'wh.png': 'https://wa.me/+201030674159',
    'inst.png':
        'https://www.instagram.com/gamalkhaled964?igsh=MTN0bnB5eWdubjNmbA==',
    'tw.png': 'https://twitter.com/?lang=ar'
  };
  var icon = ['fac.png', 'tel.png', 'yout.png', 'wh.png', 'inst.png', 'tw.png'];
  var linkicon = [
    'https://www.facebook.com/gemy68000?mibextid=ZbWKwL',
    'https://telegram.me/+201030674159',
    'https://www.youtube.com/channel/UCnM2XsWBfs-txd-ojFTpZvw',
    'https://wa.me/+201030674159',
    'https://www.instagram.com/gamalkhaled964?igsh=MTN0bnB5eWdubjNmbA==',
    'https://twitter.com/?lang=ar'
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderT>(
      builder: (context, value, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('My name'),
            backgroundColor: Colors.blueGrey,
            leading: Icon(Icons.cabin),
            actions: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                ),
                child: IconButton(
                  icon: value.getMyiconBar() == null
                      ? Icon(
                          Icons.phone,
                          color: Colors.white,
                          size: 30,
                        )
                      : Material(
                          borderRadius: BorderRadius.circular(50),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 9,
                          color: Colors.transparent,
                          child: Image(
                            image: AssetImage('assets/${value.getMyiconBar()}'),
                          ),
                        ),
                  onPressed: () {
                    value.getMy_LinkBar() == null
                        ? launchUrl(Uri.parse('tel:+201030674159'))
                        : launchUrl(Uri.parse(value.getMy_LinkBar()!));
                  },
                ),
              )
            ],
          ),
          backgroundColor: Color.fromARGB(255, 195, 199, 213),
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
                  ElevatedButton(
                    onPressed: () {
                      value.chaneName();
                    },
                    child: Text('chng name'),
                  ),
                  Selector<ProviderT, String>(
                    selector: (p0, p1) => value.name,
                    builder: (context, value, child) {
                      return Text(
                        value,
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '+201030674159',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
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
                    shrinkWrap: true,
                    itemCount: icon.length,
                    primary: false,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return IconGrid(
                          icon: ListOfSochial.keys.toList()[index],
                          linkIcon: ListOfSochial.values.toList()[index]);
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
