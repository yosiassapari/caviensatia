import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width, double biggestWidth) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              biggestWidth > 800 ? "Soon to be\nGeologist" : "Son to be Geologist",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0, color: Colors.white),
              textAlign: biggestWidth > 800 ? TextAlign.left : TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "A graduate student in hydrogeology program at ISU looking for a position at environmental services in groundwater management, and geosciences field in geological exploration, where I can my STEM-oriented instruction, technology, and leadership and communication skills to support team growth and success.",
                style: TextStyle(fontSize: 16.0, color: Colors.white),
                textAlign: biggestWidth > 800 ? TextAlign.left : TextAlign.center,
              ),
            ),
            biggestWidth > 800
                ? MaterialButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                      child: Text("Current Projects", style: TextStyle(color: Colors.red)),
                    ),
                  )
                : Center(
                    child: MaterialButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0))),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                        child: Text("Current Projects", style: TextStyle(color: Colors.red)),
                      ),
                    ),
                  )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Image.asset(
          'assets/images/foto.png',
          width: width,
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: pageChildren(constraints.biggest.width / 2, constraints.biggest.width),
          );
        } else {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: pageChildren(constraints.biggest.width, constraints.biggest.width),
          );
        }
      },
    );
  }
}
