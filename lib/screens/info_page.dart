import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:bouncing_widget/bouncing_widget.dart';

import '../main.dart';

final Uri _telegram = Uri.parse('#');
final Uri _baholash = Uri.parse("#");
final Uri _boshqa = Uri.parse('#');

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Maqollar va Iboralar",
          style: TextStyle(fontSize: 20, fontFamily: 'Josef'),
        ),
        leading: Container(
          padding: const EdgeInsets.only(left: 12),
          child: Image.asset(
            'assets/image/img_3.png',
            width: 30,
          ),
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(24),
              bottomLeft: Radius.circular(24)),
        ),
        elevation: 1000,
        // backgroundColor: Colors.teal,
      ),
      body: Shimmer(
        duration: Duration(seconds: 3),
        //Default value
        interval: Duration(seconds: 5),
        //Default value: Duration(seconds: 0)
        color: Colors.green,
        //Default value
        colorOpacity: 0.3,
        //Default value
        enabled: true,
        //Default value
        direction: const ShimmerDirection.fromLTRB(),
        //Default Value
        child: ListView(
          children: [
            Card(
              margin: const EdgeInsets.only(
                  top: 10, bottom: 8, left: 16, right: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23),
              ),
              elevation: 12,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 16, bottom: 2, left: 16, right: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Dastur haqida",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              letterSpacing: 1,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        top: 14, bottom: 16, left: 16, right: 16),
                    child: Text(
                      "O'zbek va dunyo xalqlari maqollari va iboralarini o'z ichiga jamlagan eng katta offline dasturga xush kelibsiz, tez orada yana foydalanuvchiga qulayliklar qo'shib boriladi.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'San-serif',
                          letterSpacing: 1,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.blueGrey),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.only(
                  top: 20, bottom: 4, left: 16, right: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23),
              ),
              elevation: 12,
              child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 26, top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.language_outlined),
                          SizedBox(width: 8),
                          Text(
                            "Tilni o'zgartirish",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'San-serif',
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.play_arrow_outlined,
                            size: 32,
                          )
                        ],
                      ),
                    ],
                  )),
            ),
            BouncingWidget(
              duration: const Duration(milliseconds: 1),
              scaleFactor: 2,
              onPressed: () {
                MyApp.themeNotifier.value =
                    MyApp.themeNotifier.value == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light;
              },
              child: Card(
                margin: const EdgeInsets.only(
                    top: 4, bottom: 4, left: 16, right: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(23),
                ),
                elevation: 12,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 28, top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.ad_units),
                          SizedBox(width: 8),
                          Text(
                            "Ilova mavzusi",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'San-serif',
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                      Icon(
                          MyApp.themeNotifier.value == ThemeMode.light
                              ? Icons.wb_sunny_outlined
                              : Icons.nights_stay_outlined,
                          size: 32),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.only(
                  top: 32, bottom: 4, left: 16, right: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23),
              ),
              elevation: 12,
              child: InkWell(
                onTap: _baholashuchun,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 18, right: 16, top: 12, bottom: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.mail_outline),
                          SizedBox(width: 12),
                          Text(
                            "Biz bilan aloqa",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'San-serif',
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios_outlined),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.only(top: 4, bottom: 4, left: 16, right: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23),
              ),
              elevation: 12,
              child: InkWell(
                onTap: _baholashuchun,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 18, right: 16, top: 12, bottom: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.grade_outlined,
                            size: 26,
                          ),
                          SizedBox(width: 12),
                          Text(
                            "Dasturni baholash",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'San-serif',
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios_outlined),
                    ],
                  ),
                ),
              ),
            ),
            BouncingWidget(
              duration: const Duration(milliseconds: 1),
              scaleFactor: 2,
              onPressed: () {},
              child: Card(
                margin: const EdgeInsets.only(
                    top: 4, bottom: 4, left: 16, right: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(23),
                ),
                elevation: 12,
                child: InkWell(
                  onTap: () {
                    Share.share(
                        "O'zbek va dunyo xalqlari maqollari va iboralarini o'z ichiga jamlagan eng katta offline dasturga taklif qilaman. \n\n Yuklab olish uchun link:");
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 18, right: 16, top: 12, bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.share_outlined),
                            SizedBox(width: 12),
                            Text(
                              "Do'stlarga ulashish",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'San-serif',
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.blue),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _launchUrltg() async {
  if (!await launchUrl(_telegram)) throw 'Could not launch $_telegram';
}

void _boshqadas() async {
  if (!await launchUrl(_boshqa)) throw 'Could not launch $_boshqa';
}

void _baholashuchun() async {
  if (!await launchUrl(_baholash)) throw 'Could not launch $_baholash';
}
