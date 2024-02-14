import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import'MyHomePage .dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        MyHomePage.routeName: (context) => MyHomePage(title: '',),
      
      },
      initialRoute: MyHomePage.routeName,
      onGenerateRoute: (RouteSettings settings) {
        var page;
        String? routeName = settings.name;
        switch (routeName) {
          case Page1.routeName:
            page = Page1(
              data: settings.arguments,
            );
            return MaterialPageRoute(builder: (context) => page);
            break;

          case Page2.routeName:
            page = Page2(
              data: settings.arguments,
            );
            return MaterialPageRoute(builder: (context) => page);
            break;
        }
      },
      onUnknownRoute: (RouteSettings settings) {
        var page;
        page = Page3(data: settings.arguments);

        return MaterialPageRoute(builder: (context) => page);
      },
    );
  }
}
