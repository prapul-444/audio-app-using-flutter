import 'package:flutter/material.dart';
import 'HomePage.dart';

void main()=>runApp(Myapp());
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'audio',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: HomePage(),
      
    );
  }
}