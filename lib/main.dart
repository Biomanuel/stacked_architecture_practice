import 'package:flutter/material.dart';

void main() {
  // TODO: setupLocator here
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Architecture',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // TODO: Set Navigator Key here
      // TODO: Set onGenerateRoute here
      // TODO: Set initialRoute here
    );
  }
}
