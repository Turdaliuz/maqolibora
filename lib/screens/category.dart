import 'package:flutter/material.dart';

class CategoryUz extends StatefulWidget {
  const CategoryUz({Key? key}) : super(key: key);

  @override
  State<CategoryUz> createState() => _CategoryState();
}

class _CategoryState extends State<CategoryUz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: const EdgeInsets.only(left: 12),
          child: Image.asset(
            'assets/image/img_3.png',
            width: 30,
          ),
        ),
        title: const Text("Kategoriyalar", style: TextStyle(fontSize: 22, fontFamily: 'Josef'),),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(24),
              bottomLeft: Radius.circular(24)),
        ),
        elevation: 1000,
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 4, right: 4, top: 16, bottom: 16),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.only(top: 6),
                elevation: 8,
                child: Container( alignment: Alignment.center, height: 92,
                  padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  child: Text(
                    "Adolat, insof va tenglik",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                        fontSize: 18),
                  ),
                  width: 172,
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.only(top: 6),
                elevation: 8,
                child: Container( alignment: Alignment.center, height: 92,
                  padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  child: const Text(
                    "Baxt, sevgi va omad",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                        fontSize: 18),
                  ),
                  width: 172,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.only(top: 6),
                elevation: 8,
                child: Container( alignment: Alignment.center, height: 92,
                  padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  child: Text(
                    "Yaxshilik va yomonlik",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                        fontSize: 18),
                  ),
                  width: 172,
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.only(top: 6),
                elevation: 8,
                child: Container( alignment: Alignment.center, height: 92,
                  padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  child: Text(
                    "Xulq, tarbiya va odob",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                        fontSize: 18),
                  ),
                  width: 172,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.only(top: 6),
                elevation: 8,
                child: Container( alignment: Alignment.center, height: 92,
                  padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  child: Text(
                    "Boylik va faqirlik",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                        fontSize: 18),
                  ),
                  width: 172,
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.only(top: 6),
                elevation: 8,
                child: Container( alignment: Alignment.center, height: 92,
                  padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  child: Text(
                    "Mardlik va botirlik",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                        fontSize: 18),
                  ),
                  width: 172,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.only(top: 6),
                elevation: 8,
                child: Container( alignment: Alignment.center, height: 92,
                  padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  child: Text(
                    "Baraka va unumdorlik",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                        fontSize: 18),
                  ),
                  width: 172,
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.only(top: 6),
                elevation: 8,
                child: Container( alignment: Alignment.center, height: 92,
                  padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  child: Text(
                    "Zamon, vaqt va umr",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                        fontSize: 18),
                  ),
                  width: 172,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.only(top: 6),
                elevation: 8,
                child: Container(  alignment: Alignment.center,
                  height: 92,
                  padding:
                  const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  child: const Text(
                    "Vatan va xalq",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                        fontSize: 18),
                  ),
                  width: 172,
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.only(top: 6),
                elevation: 8,
                child: Container( alignment: Alignment.center, height: 92,
                  padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  child: Text(
                    "Dono va ziyraklik",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                        fontSize: 18),
                  ),
                  width: 172,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.only(top: 6),
                elevation: 8,
                child: Container( alignment: Alignment.center, height: 92,
                  padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  child: Text(
                    "To'g'rilik va halollik",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                        fontSize: 18),
                  ),
                  width: 172,
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.only(top: 6),
                elevation: 8,
                child: Container( alignment: Alignment.center, height: 92,
                  padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  child: Text(
                    "Salomatlik va ozodalik",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                        fontSize: 18),
                  ),
                  width: 172,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.only(top: 6),
                elevation: 8,
                child: Container( alignment: Alignment.center, height: 92,
                  padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  child: Text(
                    "Do'stlik va dushmanlik",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                        fontSize: 18),
                  ),
                  width: 172,
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.only(top: 6),
                elevation: 8,
                child: Container( alignment: Alignment.center, height: 92,
                  padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  child: Text(
                    "Imkon va tushkunlik",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                        fontSize: 18),
                  ),
                  width: 172,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.only(top: 6),
                elevation: 8,
                child: Container( alignment: Alignment.center, height: 92,
                  padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  child: Text(
                    "Sabr qanoat haqida",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                        fontSize: 18),
                  ),
                  width: 172,
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.only(top: 6),
                elevation: 8,
                child: Container( alignment: Alignment.center, height: 92,
                  padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  child: Text(
                    "Oila haqida",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                        fontSize: 18),
                  ),
                  width: 172,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.only(top: 6),
                elevation: 8,
                child: Container( alignment: Alignment.center, height: 92,
                  padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  child: Text(
                    "Ishbilarmonlik, uddaburonlik",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                        fontSize: 18),
                  ),
                  width: 172,
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.only(top: 6),
                elevation: 8,
                child: Container( alignment: Alignment.center, height: 92,
                  padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  child: Text(
                    "Mehnat va hunar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                        fontSize: 18),
                  ),
                  width: 172,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.only(top: 6),
                elevation: 8,
                child: Container( alignment: Alignment.center, height: 92,
                  padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  child: Text(
                    "Mehr-oqibat haqida",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                        fontSize: 18),
                  ),
                  width: 172,
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.only(top: 6),
                elevation: 8,
                child: Container( alignment: Alignment.center, height: 92,
                  padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  child: Text(
                    "Boshqa mavzularda...",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                        fontSize: 18),
                  ),
                  width: 172,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
