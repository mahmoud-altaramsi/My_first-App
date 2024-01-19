import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// ignore: unused_import
import 'package:url_launcher/url_launcher_string.dart';
// ignore: unused_import
import 'package:vapp/gamegrid.dart';
import 'sochial.dart';
// ignore: duplicate_import, unused_import
import 'gamegrid.dart';
import 'gamevs.dart';
import 'sochiallink.dart';

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
  Map<dynamic, dynamic> GridCorect = {
    'cc.png': 'cc.png',
    'r.png': 's.png',
    'jyj.png': 'kj.png',
    'a.png': 'ahu.png',
    'hkr.png': 'hnc.png',
    '4e.png': '5hd.png',
    'asd.png': 'b.png',
    'ffy.png': 'ft.png',
    'g.png': 'hgj.png',
    'hhh.png': 'hj.png',
    'hr5.png': 'hy.png',
    'iop.png': 'jk.png',
    'jud.png': 'jy.png',
    'o.png': 'oo.png',
    'op.png': 'q.png',
    'ss.png': 't.png',
    'tht.png': 'tt.png',
    'ttt.png': 'tty.png',
    'ty.png': 'tyu.png',
    'x.png': 'xx.png',
    'y5h.png': 'yu.png',
    'yyt.png': 'yytt.png',
  };
  PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 250, 221),
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
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
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
                  ]),
              SochialLink(ListOfSochial: ListOfSochial),
              Container(
                color: Color.fromARGB(255, 255, 204, 112),
                width: double.infinity,
                height: 9,
              ),
              Container(
                // height: 70,
                width: double.infinity,
                color: Color.fromARGB(255, 34, 102, 141),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 70,
                      width: double.infinity,
                      // color: Color.fromARGB(255, 34, 102, 141),
                      child: gamevs(GridCorect: GridCorect),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 70,
                      width: double.infinity,
                      // color: Color.fromARGB(255, 34, 102, 141),
                      child: gamevs(GridCorect: GridCorect),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 70,
                      width: double.infinity,
                      // color: Color.fromARGB(255, 34, 102, 141),
                      child: gamevs(GridCorect: GridCorect),
                    ),
                    SizedBox(
                      height: 59.2,
                    ),
                    Container(
                      color: Color.fromARGB(190, 5, 110, 160),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.copyright,
                            size: 15,
                          ),
                          Text(
                            ' 2024',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Mahmoud Khalid Al_Taramsi",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 250, 221)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}