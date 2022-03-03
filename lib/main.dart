import 'package:flutter/material.dart';
import 'home_page.dart';
import 'post_requirements.dart';

void main() {
  runApp(IntellectedApp());
}

class IntellectedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
