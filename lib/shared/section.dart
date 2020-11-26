import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  Section({@required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(title, style: TextStyle(color: Colors.white)),
        Divider(
          thickness: 1,
          color: Colors.white,
        ),
      ],
    );
  }
}
