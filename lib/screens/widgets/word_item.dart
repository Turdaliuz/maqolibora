import 'package:flutter/material.dart';
import 'package:ozbekcha_inglizcha_iboralar/models/word.dart';
import 'package:ozbekcha_inglizcha_iboralar/screens/details_page.dart';
import 'package:provider/provider.dart';

class WordItem extends StatefulWidget {
  final Word word;
  final bool? isWord;

  const WordItem(this.word, {this.isWord, Key? key}) : super(key: key);

  @override
  State<WordItem> createState() => _WordItemState();
}

class _WordItemState extends State<WordItem> {
  bool isTab = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailsPage(widget.word, widget.isWord!)));
      },
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        elevation: 4,
        margin: const EdgeInsets.only(top: 4, left: 2, right: 2, bottom: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                  top: 14, bottom: 12, left: 18, right: 16),
              child: Text(
                widget.isWord! ? widget.word.rus! : widget.word.uzb ?? "...",
                textAlign: TextAlign.start,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
