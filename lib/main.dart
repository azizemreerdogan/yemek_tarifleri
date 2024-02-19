
import 'package:empty_project/101/yemekler_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          appBarTheme: const AppBarTheme(
            color: Colors.red,
            titleTextStyle: TextStyle(fontSize: 24,color: Colors.white)
          ),
          
        ),
        home: const YemeklerSiraliView());
  }
}


