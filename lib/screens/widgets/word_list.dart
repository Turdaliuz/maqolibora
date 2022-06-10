import 'package:flutter/material.dart';
import 'package:ozbekcha_inglizcha_iboralar/screens/widgets/word_item.dart';
import 'package:provider/provider.dart';

import 'package:shared_preferences/shared_preferences.dart';
import '../../settings/database_helper.dart';
import '../../settings/main_provider.dart';
import '../../utils/constants.dart';

class WordList extends StatefulWidget {
  const WordList({Key? key}) : super(key: key);

  @override
  State<WordList> createState() => _WordListState();
}

class _WordListState extends State<WordList> {
  @override
  void initState() {
    super.initState();

    loadDB();
  }

  Future<void> loadDB() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool isLoader = prefs.getBool(Constans.IS_DATABASE_INIT) ?? false;

    if (!isLoader) {
      await DatabaseHelper.intance.loadDB(context);
    }
    updateQuery();
  }

  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .9,
      child: Consumer<MainProvider>(builder: (context, value, child) {
        return Scrollbar(
          thickness: 8,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return WordItem(value.words[index], isWord: value.isWord);
            },
            itemCount: value.words.length,
          ),
        );
      }),
    );
  }

  void updateQuery({String? word, bool? isSlovo}) {
    final mainProvider = Provider.of<MainProvider>(context, listen: false);
    mainProvider.initList(word: word, isSlovo: isSlovo);
  }
}
