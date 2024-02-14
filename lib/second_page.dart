import 'package:flutter/material.dart';
import 'package:open_pdf/pdf_file.dart';

class SecondPage extends StatefulWidget {
  static final String id = "second_page";

  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return PDFFile(
                  img_name: "assets/1.pdf",
                  app_name: "Buxoro",
                );
              }));
            },
            child: Container(
              margin: EdgeInsets.all(12),
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  image: DecorationImage(
                      image: AssetImage("assets/img.png"), fit: BoxFit.cover)),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return PDFFile(
                  img_name: "assets/2.pdf",
                  app_name: "Xorazm",
                );
              }));
            },
            child: Container(
              margin: EdgeInsets.all(12),
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  image: DecorationImage(
                      image: AssetImage("assets/img.png"), fit: BoxFit.cover)),
            ),
          )
        ],
      ),
    );
  }
}
