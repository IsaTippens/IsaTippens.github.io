import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app.dart';

void main() {
  GoogleFonts.config.allowRuntimeFetching = false;
  runApp(
    const App(
      landing: true,
    ),
  );
}
