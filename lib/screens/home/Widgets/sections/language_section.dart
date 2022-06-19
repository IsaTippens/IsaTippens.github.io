import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = GoogleFonts.notoSansMono(
      fontWeight: FontWeight.w300,
      fontSize: 16.0,
      height: 1.5,
    );
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Worked with C#, Python, Go, Javascript, Dart and Java.',
              style: textStyle),
          Text(
            'Learnt Rust, C, C++, Solidity.',
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
