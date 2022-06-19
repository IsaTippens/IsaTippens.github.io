import 'package:flutter/material.dart';
import 'package:portfolio/themes.dart';
import 'package:portfolio/screens/home/home.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => Body(),
      },
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Home(),
      ),
    );
  }
}
