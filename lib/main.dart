import 'package:flutter/material.dart';
import 'package:assesment/presentation/screens/home_page.dart';

void main() {
  runApp(Section2());
}

class Section2 extends StatelessWidget {
  const Section2({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

