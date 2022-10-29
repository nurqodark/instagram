import 'package:flutter/material.dart';
import 'package:insta/page/mainpage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(primarySwatch: Colors.grey),
      home: MainPage(),
    );
  }
}
