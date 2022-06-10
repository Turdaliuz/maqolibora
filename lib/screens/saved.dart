import 'package:flutter/material.dart';
import 'package:ozbekcha_inglizcha_iboralar/models/word.dart';
import 'package:ozbekcha_inglizcha_iboralar/screens/widgets/word_item.dart';
import 'package:ozbekcha_inglizcha_iboralar/settings/main_provider.dart';
import 'package:provider/provider.dart';

import '../settings/database_helper.dart';

class SavedUz extends StatefulWidget {
  SavedUz({Key? key}) : super(key: key);

  @override
  State<SavedUz> createState() => _SavedUzState();
}

class _SavedUzState extends State<SavedUz> {
  final List<Word> words = [];
  final List<int> indexes = [];

  @override
  void initState() {
    super.initState();
    getFavsIndexes();
  }

  getFavsIndexes() async {
    final mainProvider = Provider.of<MainProvider>(context, listen: false);
    indexes.addAll(await mainProvider.getFavList());
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(builder: (context, data, child) {
      return FutureBuilder(
          future: indexes,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return GridView.builder(
                  padding: const EdgeInsets.only(top: 24, bottom: 24),
                  scrollDirection: Axis.vertical,
                  itemCount: snapshot.data.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 2 / 1,
                      crossAxisCount: 1,
                      mainAxisExtent: 350,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 32),
                  itemBuilder: (BuildContext context, int index) {
                    getFavs(context, snapshot.data[index]);
                    return words.isNotEmpty
                        ? WordItem(
                            words.first,
                            isWord: true,
                          )
                        : Container();
                  });
            }
          });
    });
  }

  getFavs(context, id) async {
    words.clear();
    Word word = await DatabaseHelper.intance.getWordById(id);
    words.add(word);
  }
}
