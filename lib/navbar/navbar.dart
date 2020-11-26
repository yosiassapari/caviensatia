import 'package:flutter/material.dart';
import 'package:caviensatya/landing_page/resume.dart';
import 'package:caviensatya/main.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) => MyHomePage(),
                    transitionDuration: Duration(seconds: 0),
                  ),
                );
              },
              child: Text(
                "My Portfolio",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
              ),
            ),
            Row(
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => Resume(),
                        transitionDuration: Duration(seconds: 0),
                      ),
                    );
                  },
                  child: Text(
                    "Resume",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "About Me",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Projects",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: Colors.pink,
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () {},
                  child: Text(
                    "Hire Me",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(children: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) => MyHomePage(),
                  transitionDuration: Duration(seconds: 0),
                ),
              );
            },
            child: Text(
              "My Portfolio",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) => Resume(),
                          transitionDuration: Duration(seconds: 0),
                        ),
                      );
                    },
                    child: Text(
                      "Resume",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "About Me",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Projects",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Hire Me",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
