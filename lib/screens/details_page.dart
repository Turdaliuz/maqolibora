import 'package:flutter/material.dart';
import 'package:ozbekcha_inglizcha_iboralar/settings/main_provider.dart';
import 'package:ozbekcha_inglizcha_iboralar/models/word.dart';
import 'package:share/share.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:provider/provider.dart';

import '../main.dart';

class DetailsPage extends StatefulWidget {
  final Word word;
  final bool isWord;
  const DetailsPage(this.word, this.isWord);

  @override
  State<DetailsPage> createState() => _DetailsPage();
}












class _DetailsPage extends State<DetailsPage> {

 final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
final mainProvider = Provider.of<MainProvider> (context, listen: false);
    Future _speak() async{
      await flutterTts.speak(widget.isWord ? widget.word.uzb! : widget.word.rus ?? "...");
      await flutterTts.setLanguage("en-GB");
      await flutterTts.setSpeechRate(0.2);
      await flutterTts.setVolume(1.0);
      await flutterTts.setPitch(1);
    }


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Maqollar va Iboralar", style: TextStyle(fontSize: 20, fontFamily: 'Josef'),),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),),
      body: ListView(
        padding: const EdgeInsets.only(top: 20,  left: 16, right: 16),
        children: [
          Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32)),
        ),
        elevation: 16,
        margin: const EdgeInsets.only(top: 4, left: 2, right: 2, bottom: 2),
        child:
            Center(child:
            Container(
              margin: const EdgeInsets.only(left: 28, right: 28, top: 30, bottom: 32),
              child:
              Text(widget.isWord ? widget.word.uzb! : widget.word.rus ?? "...",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
    color: MyApp.themeNotifier.value == ThemeMode.light ? Colors.blue : Color(0XFFFFFFFF),

    fontSize: 20,
                  fontFamily: 'Roboto',
                  letterSpacing: 1,
                ),
              ),
            ),
      ),
),
          const SizedBox(height: 38),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 28, right: 28),
                child:
              OutlinedButton(
                  child:
                      Container(
                        padding: const EdgeInsets.only(top: 8, bottom: 8, right: 8, left: 8),
                        child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                    Icon(Icons.keyboard_voice_outlined, size: 28,),
SizedBox(width: 12),
                 Text("Tinglash  (en-GB)", style: TextStyle(fontSize: 17),),
            ],),),
              onPressed: (){
                    _speak();
                    FlutterClipboard.copy(widget.isWord ? widget.word.uzb! : widget.word.rus ?? "...");

              },
              ),),
              const SizedBox(height: 6),
              Container(
                margin: const EdgeInsets.only(left: 28, right: 28),
                child:
                OutlinedButton(
                  child:
                  Container(
                    padding: const EdgeInsets.only(top: 8, bottom: 8, right: 8, left: 8),
                    child:
                    Row(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.copy_outlined, size: 28,),
SizedBox(width: 12),
                        Text("Nusxa olish", style: TextStyle(fontSize: 17),),
                      ],),),
                  onPressed: () {
                   FlutterClipboard.copy(widget.isWord ? widget.word.uzb! : widget.word.rus ?? "...");
                   final snackBar = SnackBar(backgroundColor: Colors.white24,
                     content: const Text('Vaqtinchali xotiraga nusxalandi...', style: TextStyle(color: Colors.teal)),
                     action: SnackBarAction(
                       label: 'OK',
                       onPressed: () {
                         // Some code to undo the change.
                       },
                     ),
                   );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),),
              const SizedBox(height: 6),

              Container(
                margin: const EdgeInsets.only(left: 28, right: 28),
                child:
                OutlinedButton(
                  child:
                  Container(
                    padding: const EdgeInsets.only(top: 8, bottom: 8, right: 8, left: 8),
                    child:
                    Row(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.save_outlined, size: 28,),
SizedBox(width: 12),
                        Text("Saqlab qo'yish", style: TextStyle(fontSize: 17),),
                      ],),),


                    onPressed: (){

                    }


                    ),),
              const SizedBox(height: 6),
              Container(
                margin: const EdgeInsets.only(left: 28, right: 28),
                child:
                OutlinedButton(
                  child:
                  Container(
                    padding: const EdgeInsets.only(top: 8, bottom: 8, right: 8, left: 8),
                    child:
                    Row(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.share_outlined, size: 28,),
SizedBox(width: 12),
                        Text("Do'stlarga ulashish", style: TextStyle(fontSize: 17),),
                      ],),),
                    onPressed: () {Share.share(widget.isWord ? widget.word.uzb! : widget.word.rus ?? "...",);}
                ),),


            ],),

      ],),
    );
  }
}
