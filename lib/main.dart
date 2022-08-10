

import 'package:flutter/material.dart';
import 'package:teaching/ImageSlider.dart';
import 'package:teaching/fbLogin.dart';
import 'package:teaching/fbShared.dart';


import 'autoComplete.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FacebookShared(),
    );
  }
}


