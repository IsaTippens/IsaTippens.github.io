import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_logic.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Widgets/sections/title_section.dart';
import 'Widgets/sections/about_section.dart';
import 'Widgets/sections/current_section.dart';
import 'Widgets/sections/language_section.dart';
import 'Widgets/sections/work_section.dart';

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
    final boxColor = Theme.of(context).primaryColor;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: boxColor, width: 4),
      ),
      margin: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleSection(),
            SizedBox(height: 10),
            AboutSection(),
            SizedBox(height: 10),
            CurrentSection(),
            SizedBox(height: 10),
            LanguageSection(),
            SizedBox(height: 10),
            WorkSection(),
          ],
        ),
      ),
    );
  }
}
