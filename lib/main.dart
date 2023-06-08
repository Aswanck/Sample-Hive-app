import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:untitled/app.dart';

void main() async {
  await Hive.initFlutter();

  var box = await Hive.openBox('MyBox');

  runApp(App());
}
