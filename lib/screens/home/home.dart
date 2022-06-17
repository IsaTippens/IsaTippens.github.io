import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'home_logic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home_content.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget googleText(String text) {
    return Text(
      text,
      style: GoogleFonts.sourceCodePro(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Center(
      child: SizedBox(
        width: 600,
        child: Card(
          color: Colors.transparent,
          elevation: 0,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.zero,
            side: BorderSide(
              color: Colors.blueAccent,
              width: 2,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(child: HomeContent()),
          ),
        ),
      ),
    );
  }
}
