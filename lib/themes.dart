import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData.light().copyWith();
ThemeData darkTheme = ThemeData.dark().copyWith(backgroundColor: Colors.black);

class GloblaTheme {
  static final TextTheme _text = TextTheme(
    headline1: GoogleFonts.notoSansMono(
      fontSize: 96,
      fontWeight: FontWeight.w300,
    ),
    headline2: GoogleFonts.notoSansMono(
      fontSize: 60,
      fontWeight: FontWeight.w300,
    ),
    bodyText1: GoogleFonts.notoSansMono(
      fontSize: 16,
      fontWeight: FontWeight.w300,
    ),
    bodyText2: GoogleFonts.notoSansMono(
      fontSize: 14,
      fontWeight: FontWeight.w300,
    ),
  );

  static final TextStyle header = _text.headline1!;
  static final TextStyle subHeader = _text.headline2!;
  static final TextStyle body = _text.bodyText1!;
  static final TextStyle inline = _text.bodyText2!;
}
