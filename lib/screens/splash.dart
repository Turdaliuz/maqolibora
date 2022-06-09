// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ozbekcha_inglizcha_iboralar/screens/asosiy.dart';
import 'package:ozbekcha_inglizcha_iboralar/screens/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {

@override
void initState(){
  // TODO implement initState
  super.initState();
  Timer(const Duration(seconds: 3), () {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Asosiy()));
  });
}
  @override
  Widget build(BuildContext context) {
    return
      const Scaffold(  backgroundColor: Colors.blueGrey,
        body: Center(
      child: SpinKitRing(
        color: Colors.white,
        size: 100,
      ),),
    );
  }
}
