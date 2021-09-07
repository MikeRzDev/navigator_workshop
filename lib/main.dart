import 'package:flutter/material.dart';
import 'package:navigator_workshop/ui/main_menu.dart';
import 'package:navigator_workshop/ui/route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: routeList,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainMenu(),
    );
  }
}


