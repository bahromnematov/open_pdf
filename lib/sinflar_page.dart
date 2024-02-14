import 'package:flutter/material.dart';

import 'darslar_page.dart';
import 'home_page.dart';

class SinflarPage extends StatefulWidget {
  static final String id = "darsliklar_page";

  const SinflarPage({super.key});

  @override
  State<SinflarPage> createState() => _SinflarPageState();
}

class _SinflarPageState extends State<SinflarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return HomePage();
              }));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            //replace with our own icon data.
          ),
          actions: [
            Icon(
              Icons.language,
              size: 25,
              color: Colors.white,
            ),
            SizedBox(
              width: 12,
            ),
          ],
          backgroundColor: Colors.green,
          title: Center(
            child: Text(
              "Sinflar",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            itemClass(name: "1-Sinf", count: 5, image_count: [
              "assets/book.jpg",
              "assets/img.png",
              "assets/book.jpg",
              "assets/img.png",
              "assets/img.png"
            ]),
            itemClass(name: "2-Sinf", count: 6),
            itemClass(name: "3-Sinf", count: 3),
            itemClass(name: "4-Sinf", count: 1),
            itemClass(name: "5-Sinf", count: 1),
            itemClass(name: "6-Sinf", count: 1),
            itemClass(name: "7-Sinf", count: 1),
            itemClass(name: "8-Sinf", count: 1),
            itemClass(name: "9-Sinf", count: 1),
            itemClass(name: "10-Sinf", count: 1),
            itemClass(name: "11-Sinf", count: 1),
          ],
        ));
  }

  Widget itemClass({name, count, image_count}) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return DarslarPage(
            count: count,
            name: name,
            image: image_count,
          );
        }));
      },
      child: Container(
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.only(right: 12, top: 12, bottom: 12),
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(blurRadius: 10, color: Colors.grey.shade300),
          ],
          color: Colors.white,
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 25,
                    width: 7,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Image(image: AssetImage("assets/q.png")),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    count.toString(),
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 19,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
