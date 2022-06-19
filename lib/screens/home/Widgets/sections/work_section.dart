import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyText1;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Built websites with Nuxtjs and Flutter.', style: textStyle),
          Text('Developed mobile apps with React Native and Flutter.',
              style: textStyle),
          Text(
            'Game projects with C# and C',
            style: textStyle,
          ),
          SizedBox(height: 10.0),
          Text(
            'A little bit of Web3 too ',
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
