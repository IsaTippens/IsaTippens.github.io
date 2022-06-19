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
    final linkColor = Theme.of(context).textTheme.button;
    return Container(
      child: RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText1,
          children: [
            TextSpan(text: "Final Year student at the "),
            TextSpan(
              text: "University of the Western Cape",
              style: linkColor,
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
