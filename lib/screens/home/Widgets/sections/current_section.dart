import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import '../../home_logic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class CurrentSection extends StatelessWidget {
  const CurrentSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(
          style: GoogleFonts.notoSansMono(
            fontWeight: FontWeight.w300,
            fontSize: 16.0,
            height: 1.5,
            color: Colors.black,
          ),
          children: [
            TextSpan(text: "Final Year student at the "),
            TextSpan(
              text: "University of the Western Cape",
              style: TextStyle(color: Colors.blueAccent),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launchUrl(
                    Uri(
                      scheme: "https",
                      host: "www.uwc.ac.za",
                      path: "/",
                    ),
                  ).then((value) => null);
                },
            ),
          ],
        ),
      ),
    );
  }
}
