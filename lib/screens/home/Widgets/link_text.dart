import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkText extends StatelessWidget {
  final String text;
  final String clickableText;
  final Uri uri;

  factory LinkText(String label, String clickableContent, Uri uri) {
    return LinkText._internal(label, clickableContent, uri);
  }

  factory LinkText.email(
      {String? label, String? clickableContent, String? address}) {
    final Uri u = Uri(scheme: 'mailto', path: address);
    label ??= "";
    clickableContent ??= "";
    return LinkText(label, clickableContent, u);
  }

  factory LinkText.https(
      {String? label, String? clickableContent, String? url, String? path}) {
    final Uri u = Uri(scheme: 'https', host: url, path: path);
    label ??= "";
    clickableContent ??= "";
    return LinkText(label, clickableContent, u);
  }

  LinkText._internal(this.text, this.clickableText, this.uri);

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
                  launchUrl(this.uri).then((value) => null);
                },
            ),
          ],
        ),
      ),
    );
  }
}
