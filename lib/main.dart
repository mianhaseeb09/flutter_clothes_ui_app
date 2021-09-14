import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clothes_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: const Color(0xFFFAFAFA),
        primaryColor:const Color(0xFFFBD000),
        accentColor: const Color(0xFFFFEBC7),
      ),
      home: const HomeScreen(),
    );
  }
}
