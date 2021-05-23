import 'package:flutter/material.dart';
import 'package:commonNavigation/screens/pages/about.dart';
import 'package:commonNavigation/screens/pages/contact.dart';
import 'package:commonNavigation/screens/pages/home.dart';
import 'package:commonNavigation/screens/pages/product.dart';

void main() {
  runApp(MyApp());
}

final routes = {
  '/HomePage': (context) => HomePage(),
  '/ProductPage': (context) => ProductPage(),
  '/AboutPage': (context) => AboutPage(),
  '/ContactPage': (context) => ContactPage()
};

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      initialRoute: '/HomePage',
    );
  }
}
