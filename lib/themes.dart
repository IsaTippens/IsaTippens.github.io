import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  backgroundColor: Colors.white,
  primaryColor: Colors.blueAccent,
  textTheme: GoogleFonts.notoSansMonoTextTheme(
    const TextTheme(
      headline1: TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.w300,
        fontSize: 24.0,
        height: 1.5,
      ),
      bodyText1: TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.w300,
        fontSize: 16.0,
        height: 1.5,
      ),
      button: TextStyle(
        color: Colors.blueAccent,
        fontWeight: FontWeight.w300,
        fontSize: 16.0,
        height: 1.5,
      ),
    ),
  ),
);
ThemeData darkTheme = ThemeData.dark().copyWith(
  backgroundColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,
  primaryColor: Colors.orangeAccent,
  textTheme: GoogleFonts.notoSansMonoTextTheme(
    const TextTheme(
      headline1: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w300,
        fontSize: 24.0,
        height: 1.5,
      ),
      bodyText1: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w300,
        fontSize: 16.0,
        height: 1.5,
      ),
      button: TextStyle(
        color: Colors.orangeAccent,
        fontWeight: FontWeight.w300,
        fontSize: 16.0,
        height: 1.5,
      ),
    ),
  ),
);
