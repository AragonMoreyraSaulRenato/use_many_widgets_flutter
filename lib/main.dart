import 'package:flutter/material.dart';
import 'package:use_many_widgets_flutter/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: HomePageTemp(),
    );
  }
}
