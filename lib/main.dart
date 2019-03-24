import 'package:flutter/material.dart';
import 'package:jeevika/Screens/homepage.dart';
import 'package:jeevika/Screens/loginpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jeevika',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: LoginScreen(),
       routes: <String, WidgetBuilder> {
    '/homepage': (BuildContext context) => MyHomePage(title: 'Jeevika'),
    '/loginpage': (BuildContext context) => LoginScreen(),
       }
    );
  }
}

