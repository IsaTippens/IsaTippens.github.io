import 'dart:async';

import 'package:flutter/material.dart';
import '../../home_logic.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutSection extends StatefulWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  _AboutSectionState createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection>
    with SingleTickerProviderStateMixin {
  late Animation<int> ageAnimation;
  late Animation<int> yearsAnimation;
  late AnimationController controller;
  final List<String> adjectives = ["programmer", "coder", "developer"];
  String adjective = "programmer";
  late Timer _timer;

  void handleTimeout() {
    setState(() {
      adjective =
          adjectives[(adjectives.indexOf(adjective) + 1) % adjectives.length];
    });
  }

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
    _timer = Timer.periodic(Duration(seconds: 7), (timer) => handleTimeout());
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '${ageAnimation.value} y/o ${adjective} of ${yearsAnimation.value} years.',
        style: GoogleFonts.notoSansMono(
          fontWeight: FontWeight.w300,
          fontSize: 16.0,
          height: 1.5,
        ),
      ),
    );
  }
}
