import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:map/map_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '헌혈의 집 지도',
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home: MapScreen(),
    );
  }
}
