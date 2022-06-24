import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyText1;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Worked with C#, Python, Go, Javascript, Dart and Java.',
              style: textStyle),




        ],
      ),
    );
  }
}
