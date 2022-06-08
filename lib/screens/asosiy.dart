import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ozbekcha_inglizcha_iboralar/screens/home.dart';
import '../main.dart';
import 'info_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ozbekcha_inglizcha_iboralar/screens/category.dart';
import 'package:ozbekcha_inglizcha_iboralar/screens/saved.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Asosiy extends StatefulWidget {
  const Asosiy({Key? key}) : super(key: key);

  @override
  State<Asosiy> createState() => _AsosiyState();
}

class _AsosiyState extends State<Asosiy> {
  late PageController _pageController;

  int _Page = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: PageView(
  allowImplicitScrolling: false,
    controller: _pageController,
    children: const <Widget>[
      HomePage(),
      CategoryUz(),
      SavedUz(),
      Info(),
    ],
    onPageChanged: (int index) {
      setState(() {
        _pageController.jumpToPage(index);
      });
    }
),


      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        animationDuration: const Duration(microseconds: 100),
        backgroundColor: MyApp.themeNotifier.value == ThemeMode.light ? Color(0XFF38927B) : Color(0XFF262917),
        color: MyApp.themeNotifier.value == ThemeMode.light ? Colors.white : Color(0XFF262929),

        height: 52,
        // color: const Color(0XFFFAFAE8),
        items:  <Widget>[
          Icon(Icons.home, size: 28, color: MyApp.themeNotifier.value == ThemeMode.light ? Color(0XFF626DFF) : Color(0XFFFFFFFF),),
        FaIcon(FontAwesomeIcons.listUl, size: 28, color: MyApp.themeNotifier.value == ThemeMode.light ? Color(0XFF626DFF) : Color(0XFFFFFFFF),),
          Icon(Icons.save_outlined, size: 28, color: MyApp.themeNotifier.value == ThemeMode.light ? Color(0XFF626DFF) : Color(0XFFFFFFFF),),
          Icon(Icons.settings, size: 28, color: MyApp.themeNotifier.value == ThemeMode.light ? Color(0XFF626DFF) : Color(0XFFFFFFFF),),
        ],
        onTap: (int index) {
          setState(() {
            _pageController.jumpToPage(index);
          });
        },
      ),

    );
  }
}

