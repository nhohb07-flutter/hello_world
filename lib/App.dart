import 'package:flutter/material.dart';
import 'screens/Home/index.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Home(title: 'Flutter Demo Home Page'),
    );
  }
}
