import 'package:flutter/material.dart';
import 'package:portfolio/themes.dart';
import 'package:portfolio/screens/home/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

class App extends StatefulWidget {
  const App({this.landing = false, Key? key}) : super(key: key);
  final bool landing;
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  bool loaded = false;
  Timer scheduleTimer() => Timer(
        Duration(seconds: 1),
        _loadingFinished,
      );

  void _loadingFinished() {
    setState(
      () {
        loaded = true;
      },
    );
  }

  @override
  void initState() {
    if (widget.landing) {
      loaded = false;
      scheduleTimer();
    } else {
      loaded = true;
    }
    //Try to load googlefonts before first screen shows
    TextStyle temp = GoogleFonts.notoSansMono(
      fontWeight: FontWeight.w300,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      initialRoute: "/",
      routes: {
        '/': (context) {
          if (!loaded) {
            return Scaffold(body: null);
          }
          return Body();
        },
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
