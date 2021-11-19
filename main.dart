import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: "calculator",
      theme: ThemeData(
        brightness: Brightness.light,
        accentColor: Colors.red,
        primaryColor: Colors.blue,
        primarySwatch: Colors.amber,
      ),
      home: new Home_Page(),
    );
  }
}
