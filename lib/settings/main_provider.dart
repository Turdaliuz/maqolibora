import 'package:flutter/widgets.dart';
import 'package:ozbekcha_inglizcha_iboralar/settings/database_helper.dart';
import 'package:ozbekcha_inglizcha_iboralar/models/word.dart';
import 'package:shared_preferences/shared_preferences.dart';


class MainProvider extends ChangeNotifier {
  final List<Word> words = [];
  bool isWord = false;
  late final int index;
  bool _isItemSelected = false;
  int _selectedItemIndex = 0;

  void setItemIndex(value) {
    _selectedItemIndex = value;
  }

  int getItemIndex() {
    return _selectedItemIndex;
  }

  bool getItemSelected() {
    return _isItemSelected;
  }


  setFavourite(int index) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('fav_word', index);
  }

  Future<int?> getFavourite() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

      if (prefs.containsKey('fav_word')) {
        return prefs.getInt('fav_word');
      }
    }

    initList({String? word, bool? isSlovo}) async {
      words.clear();
      if (word == null) {
        words.addAll(await DatabaseHelper.intance.getWords());
      } else {
        words.addAll(await DatabaseHelper.intance.getWordLike(word, isSlovo!));
      }
      notifyListeners();
    }

    change() {
      isWord = !isWord;
      notifyListeners();
    }

  setFavList(List<int> indexes) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList(
      'fav_word',
      indexes.map((e) => e.toString()).toList(),
    );
    notifyListeners();
  }

  Future<List<int>> getFavList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? res = prefs.getStringList('fav_word');
    if (res != null) {
      return res.map((e) => int.parse(e)).toList();
    }
    return List.empty();
  }
}

