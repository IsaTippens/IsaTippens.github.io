import 'package:flutter/material.dart';

class NavigateButton extends StatelessWidget {
  const NavigateButton({this.title, this.route, Key? key}) : super(key: key);
  final String? route;
  final String? title;

  @override
  Widget build(BuildContext context) {
    final String tbroute = route != null ? route! : '/';
    final String tbtitle = title != null ? title! : '';
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, tbroute);
      },
      child: Text(tbtitle),
    );
  }
}
