import 'package:flutter/material.dart';
import 'package:ozbekcha_inglizcha_iboralar/settings/main_provider.dart';
import 'package:ozbekcha_inglizcha_iboralar/screens/details_page.dart';
import 'package:provider/provider.dart';

class SavedUz extends StatelessWidget {
  const SavedUz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainProvider = Provider.of<MainProvider> (context, listen: false);
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: const EdgeInsets.only(left: 12),
          child: Image.asset('assets/image/img_3.png', width: 30,),

        ),
        title: const Text("Saqlanganlar", style: TextStyle(fontSize: 22, fontFamily: 'Josef'),),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(24),
              bottomLeft: Radius.circular(24)),
        ),
        elevation: 1000,
      ),

      body:  Center(child: Text("Mavjud emas"),)

    );
  }
}






