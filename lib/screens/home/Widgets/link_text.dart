import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkText extends StatelessWidget {
  const LinkText(
      {this.text, this.clickableText, this.url, this.path, Key? key});

  final String? text;
  final String? clickableText;
  final String? url;
  final String? path;
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
            TextSpan(text: (text != null) ? "$text: " : null),
            TextSpan(
              text: (clickableText != null) ? "$clickableText" : null,
              style: TextStyle(color: Colors.blueAccent),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  if (url != null && path != null) {
                    launchUrl(Uri.https(url!, path!)).then((value) => null);
                  }
                },
            ),
          ],
        ),
      ),
    );
  }
}
