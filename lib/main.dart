import 'package:flutter/material.dart';
import 'package:ozbekcha_inglizcha_iboralar/screens/splash.dart';
import 'package:ozbekcha_inglizcha_iboralar/settings/main_provider.dart';
import 'package:ozbekcha_inglizcha_iboralar/screens/asosiy.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainProvider()),
      ],
      child: const MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  // Using "static" so that we can easily access it later
  static final ValueNotifier<ThemeMode> themeNotifier =
  ValueNotifier(ThemeMode.light);

  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __)
    {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: 'Roboto',
            primarySwatch: Colors.teal),

        darkTheme: ThemeData.dark().copyWith(
                   primaryTextTheme: ThemeData.dark().textTheme.apply(
            fontFamily: 'Monaco',
          ),
        ),
        themeMode: currentMode,
        home: const Splash(),
      );
    }
    );
  }

}