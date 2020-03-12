import 'package:flutter/material.dart';
import 'package:food_order/pages/home.dart';
import 'package:food_order/pages/intro_screen.dart';
import 'package:food_order/pages/splash_screen.dart';

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => Home(),
  "/intro": (BuildContext context) => IntroScreen(),
};
    void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     theme:
    ThemeData(primaryColor: Colors.deepOrangeAccent, accentColor: Colors.white),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: routes);
  }
}