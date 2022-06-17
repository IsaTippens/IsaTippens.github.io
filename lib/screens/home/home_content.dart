import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_logic.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent>
    with SingleTickerProviderStateMixin {
  late Animation<int> ageAnimation;
  late Animation<int> yearsAnimation;
  late AnimationController controller;

  @override
  void initState() {
    int age = yearsSince(1, 6, 2001);
    int years = yearsSince(1, 8, 2013);
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    final Animation<double> curve =
        CurvedAnimation(parent: controller, curve: Curves.easeOut);
    ageAnimation = IntTween(begin: 0, end: age).animate(curve)
      ..addListener(() {
        setState(() {});
      });
    yearsAnimation = IntTween(begin: 0, end: years).animate(curve)
      ..addListener(() {
        setState(() {});
      });
    controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: GoogleFonts.notoSansMono(
          fontWeight: FontWeight.w300,
          fontSize: 18.0,
          height: 1.5,
          color: Theme.of(context).brightness == Brightness.light
              ? Colors.black87
              : Colors.white,
        ),
        mouseCursor: SystemMouseCursors.text,
        children: [
          TextSpan(
            text: "I'm Isa\n",
            style: TextStyle(fontSize: 32.0),
          ),
          TextSpan(
            text: "This is what I do\n",
            style: TextStyle(fontSize: 32.0),
          ),
          TextSpan(
              text:
                  "${ageAnimation.value} y/o programmer of ${yearsAnimation.value} years.\n"),
          TextSpan(text: "Final year student at the "),
          TextSpan(
            text: "University of the Western Cape.\n\n",
            style: TextStyle(color: Colors.blueAccent),
            mouseCursor: SystemMouseCursors.click,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print("Click");
                launchUrl(
                  Uri(
                    scheme: "https",
                    host: "www.uwc.ac.za",
                  ),
                ).then((value) {});
              },
          ),
          TextSpan(
              text:
                  "Experience in C#, Python, JavaScript, Golang, Solidity, Java, Dart, C, C++, Rust, Delphi.\n\n"),
          TextSpan(
              text:
                  "Worked on mobile apps with Flutter and React Native. Websockets and REST application with Golang + Python.\n\n"),
          TextSpan(
              text:
                  "Hobby projects in game dev with C# and C. Websites in JS and Python.\n\nA little bit of Web3 too.\n\n"),
          TextSpan(text: "Source:"),
          TextSpan(
            text: "https://github.com/IsaTippens\n",
            style: TextStyle(color: Colors.blueAccent),
            mouseCursor: SystemMouseCursors.click,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print("Click");
                launchUrl(
                  Uri(
                      scheme: "https",
                      host: "www.github.com",
                      path: "IsaTippens"),
                ).then((value) {});
              },
          ),
        ],
      ),
    );
  }
}
