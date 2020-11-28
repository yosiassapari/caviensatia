import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  Detail({
    @required this.title,
    @required this.date,
    @required this.detail,
    @required this.explanation,
    @required this.textColor,
  });

  final String title;
  final String date;
  final String detail;
  final List<String> explanation;
  final Color textColor;

  Widget getTextWidgets(List<String> strings) {
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < strings.length; i++) {
      list.add(new Text(strings[i]));
    }
    return new Row(children: list);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            )),
            Text(
              date,
              style: TextStyle(
                fontSize: 12,
                color: textColor,
              ),
            ),
          ],
        ),
        Text(
          detail,
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: textColor,
            fontSize: 13,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: explanation
                .map((item) => Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('• ', style: TextStyle(color: textColor)),
                        Expanded(child: Text('$item', style: TextStyle(color: textColor))),
                      ],
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
