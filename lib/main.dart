import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final ThemeData tema = ThemeData(
      brightness: Brightness.dark,
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: tema.copyWith(
        colorScheme: tema.colorScheme.copyWith(
          primary: Colors.black,
          secondary: Colors.yellow,
        )
      ),
      home: const HomePage(),
    );
  }
}