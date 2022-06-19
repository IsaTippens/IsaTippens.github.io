import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/Widgets/links_box.dart';
import 'home_logic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home_content.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 600,
                child: HomeContent(),
              ),
              SizedBox(
                width: 600,
                child: LinksBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
