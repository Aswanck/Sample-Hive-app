import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'screen1.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Screen1(),
    );
  }
}
