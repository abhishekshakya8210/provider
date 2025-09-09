import 'package:defunder/passwordhide/hidetest.dart';
import 'package:defunder/provider/countprovider.dart';
import 'package:defunder/provider/faviroteprovider.dart';
import 'package:defunder/provider/loginprovider.dart';
import 'package:defunder/provider/slideprovider.dart';
import 'package:defunder/provider/themeprovider.dart'; // <- Themeprovider import karna na bhoolna
import 'package:defunder/screens/countscreen.dart';
import 'package:defunder/screens/darkmode.screen.dart';
import 'package:defunder/screens/favirotescren.dart';
import 'package:defunder/screens/loginscreen.dart';
import 'package:defunder/screens/slide.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Countprovider()),
        ChangeNotifierProvider(create: (_) => Slideprovider()),
        ChangeNotifierProvider(create: (_) => Faviroteprovider()),
        ChangeNotifierProvider(create: (_) => Themeprovider()),
        ChangeNotifierProvider(create: (_) => Loginprovider()),
        
      ],
      child: Builder(
        builder: (context) {
          final themeprovider = Provider.of<Themeprovider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: themeprovider.thememode,
            theme: ThemeData(
              brightness: Brightness.light,
              primaryColor: Colors.red,
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              primaryColor: Colors.cyanAccent,
            ),
            home:LoginScreen()
            // HiheTest()
            //DarkModeScreen()
            // FaviroteScreen(), // Default screen
            // home: const SlideScreen(),
            // home: const CountScreen(),
          );
        },
      ),
    );
  }
}









