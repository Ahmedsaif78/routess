import 'package:flutter/material.dart';

import 'MyHomePage .dart';

class Page2 extends StatelessWidget {
  static const String routeName = "/page2";

  final data;
  Page2({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              data ?? "No Data",
            ),
            ElevatedButton(
              child: Text("Go to Home "),
              onPressed: () {
                Navigator.pushNamed(context, MyHomePage.routeName,
                    arguments: "This is some data");
              },
            ),
          ],
        ),
      ),
    );
  }
}