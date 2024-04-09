
import 'package:aaaaaa/screens/Splash_page.dart';
import 'package:aaaaaa/screens/homepage.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NoorPage()
    );
  }
}
