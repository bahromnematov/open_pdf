import 'package:flutter/material.dart';
import 'package:open_pdf/darslar_page.dart';
import 'package:open_pdf/home_page.dart';
import 'package:open_pdf/pdf_file.dart';
import 'package:open_pdf/second_page.dart';
import 'package:open_pdf/sinflar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        SecondPage.id:(context)=>SecondPage(),
        HomePage.id:(context)=>HomePage(),
        SinflarPage.id:(context)=>SinflarPage(),
      },
    );
  }
}
