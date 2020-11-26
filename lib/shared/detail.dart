import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  Detail(
      {@required this.title,
      @required this.date,
      @required this.detail,
      @required this.explanation});

  final String title;
  final String date;
  final String detail;
  final List<String> explanation;

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
              ),
            )),
            Text(
              date,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
        Text(
          detail,
          style: TextStyle(
            fontStyle: FontStyle.italic,
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
                        Text('• '),
                        Expanded(child: Text('$item')),
                      ],
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
