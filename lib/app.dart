import 'package:flutter/material.dart';
import 'package:loginscreen/homepage.dart';
import 'loginpage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Login Screen',
      home: Scaffold(
        backgroundColor: Colors.red,
        body: HomePage(),
      ),
    );
  }
}
