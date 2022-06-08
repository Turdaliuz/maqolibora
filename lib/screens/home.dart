
import 'package:flutter/material.dart';
import 'package:ozbekcha_inglizcha_iboralar/settings/main_provider.dart';
import 'package:ozbekcha_inglizcha_iboralar/screens/widgets/word_list.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final TextEditingController _searchQueryController = TextEditingController();
  bool _isSearching = false;
  String searchQuery = "Search query";
  bool _isSlovo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        leading: Container(
          padding: const EdgeInsets.only(left: 12),
          child: Image.asset('assets/image/img_3.png', width: 30,),
        ),
        centerTitle: true,
        title: _buildSearchField(),
        actions: _buildActions(),
      ),
      body: WordList(),


    );
  }

  Widget _buildSearchField() {
    return TextField(
      autocorrect: true,
      controller: _searchQueryController,
      autofocus: true,
      decoration: const InputDecoration(
        hintText: "       Izlashga yozing ...",
        hintStyle: TextStyle(color: Colors.white70, fontWeight: FontWeight.w400),
      ),
      style: const TextStyle(color: Colors.black45, fontSize: 18.0, fontWeight: FontWeight.w600),
      onChanged: (query) => updateSearchQuery(query),
    );
  }

  List<Widget> _buildActions() {
    if (_isSearching) {
      return <Widget>[
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            if (_searchQueryController == null ||
                _searchQueryController.text.isEmpty) {
              Navigator.pop(context);
              return;
            }
            _clearSearchQuery();
          },
        ),
      ];
    }

    return <Widget>[
      IconButton(
        icon: const Icon(Icons.search, size: 28,),
        onPressed: _startSearch,
      ),
const SizedBox(width: 16),
      //
      // InkWell(
      //   onTap: () {
      //     final mainProvider =
      //         Provider.of<MainProvider>(context, listen: false);
      //     mainProvider.change();
      //     _isSlovo = !_isSlovo;
      //   },
      //   child: Container(
      //       height: 24,
      //       width: 24,
      //       child:
      //       Image.asset(
      //         "assets/image/change.png",
      //         color: Colors.cyanAccent,
      //       )),
      // ),
      //
      // const SizedBox(
      //   width: 16,
      // )
    ];
  }

  void _startSearch() {
    ModalRoute.of(context)
        ?.addLocalHistoryEntry(LocalHistoryEntry(onRemove: _stopSearching));

    setState(() {
      _isSearching = true;
    });
  }

  void updateSearchQuery(String newQuery) {
    searchQuery = newQuery;
    updateQuery(word: searchQuery);
  }

  void _stopSearching() {
    _clearSearchQuery();

    setState(() {
      _isSearching = false;
    });
  }

  void _clearSearchQuery() {
    setState(() {
      _searchQueryController.clear();
      updateSearchQuery("");
    });
  }

  void updateQuery({
    String? word,
  }) {
    final mainProvider = Provider.of<MainProvider>(context, listen: false);
    mainProvider.initList(
      word: word,
      isSlovo: _isSlovo,
    );
  }

}



