import 'package:flutter/material.dart';
import 'package:portfolio/themes.dart';
import 'package:portfolio/screens/home/home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT',
      theme: lightTheme,
      darkTheme: darkTheme,

      home: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bgColor = Theme.of(context).brightness == Brightness.light
        ? Colors.white
        : Colors.black;
    return Scaffold(
      backgroundColor: bgColor,
      body: Home(),
    );
  }
}
