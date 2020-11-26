import 'package:caviensatya/landing_page/resume.dart';
import 'package:flutter/material.dart';
import 'package:caviensatya/landing_page/landing_page.dart';
import 'package:caviensatya/navbar/navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cavien Satia',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
      home: MyHomePage(),
      initialRoute: '/home',
      routes: {
        '/home': (context) => MyHomePage(),
        '/resume': (context) => Resume(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromRGBO(0, 0, 128, 1.0), Color.fromRGBO(173, 216, 230, 1.0)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 1670) {
                return Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 1670),
                    child: Column(
                      children: <Widget>[
                        Navbar(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                          child: LandingPage(),
                        )
                      ],
                    ),
                  ),
                );
              } else {
                return Column(
                  children: <Widget>[
                    Navbar(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                      child: LandingPage(),
                    )
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
