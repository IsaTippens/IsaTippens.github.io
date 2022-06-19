import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = GoogleFonts.notoSansMono(
      fontWeight: FontWeight.w300,
      fontSize: 24.0,
      height: 1.5,
    );
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("I'm Isa", style: textStyle),
          Text(
            "This is what I do.",
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
