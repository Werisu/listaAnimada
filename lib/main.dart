import 'package:flutter/material.dart';
import 'package:listworkanimation/screens/login/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
