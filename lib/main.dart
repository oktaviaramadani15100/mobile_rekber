import 'package:flutter/material.dart';
import 'package:rekber/screens/welcome_rekber.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rekber',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(),
    );
  }
}