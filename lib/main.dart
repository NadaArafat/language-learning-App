import 'package:flutter/material.dart';
import 'screens/home_page.dart';
void main() {
  runApp(Toku());
}

class Toku extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),

    );
  }
}
