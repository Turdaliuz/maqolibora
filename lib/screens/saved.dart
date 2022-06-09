import 'package:flutter/material.dart';
import 'package:ozbekcha_inglizcha_iboralar/models/word.dart';
import 'package:ozbekcha_inglizcha_iboralar/screens/widgets/word_item.dart';
import 'package:ozbekcha_inglizcha_iboralar/settings/main_provider.dart';
import 'package:provider/provider.dart';

class SavedUz extends StatelessWidget {
  const SavedUz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainProvider = Provider.of<MainProvider> (context, listen: false);
    return Consumer<MainProvider>(builder: (context, data, child) {
      return FutureBuilder(
          future: mainProvider.getFavList(),
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
                    return WordItem(
                      Word.word[snapshot.data[index]],
                      snapshot.data[index],
                      isWord: true,
                    );
                  });
            }
          });
    });
  }
}






