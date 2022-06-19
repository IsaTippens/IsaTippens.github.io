import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'link_text.dart';

class LinksBox extends StatelessWidget {
  const LinksBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent, width: 4),
      ),
      margin: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LinkText.https(
              label: "Github",
              clickableContent: "IsaTippens",
              url: "www.github.com",
              path: "/IsaTippens",
            ),
            LinkText.https(
              label: "Instagram",
              clickableContent: "@issssaaaaaaaaaaaaaahhhhhhhhhhh",
              url: "www.instagram.com",
              path: "/issssaaaaaaaaaaaaaahhhhhhhhhhh",
            ),
            LinkText.https(
              label: "Discord",
              clickableContent: "issssaaaaaaaaaaaaaaaaaaaah#7761",
              url: "discordapp.com",
              path: "users/265935549745856533",
            ),
            LinkText.email(
              label: "Email",
              clickableContent: "isatippens2@gmail.com",
              address: "isatippens2@gmail.com",
            ),
          ],
        ),
      ),
    );
  }
}
