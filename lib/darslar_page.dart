import 'package:flutter/material.dart';

class DarslarPage extends StatefulWidget {
  int count;
  String name;
  List image;
  static final String id="darslar_page";
   DarslarPage({super.key,required this.count,required this.name,required this.image});

  @override
  State<DarslarPage> createState() => _DarslarPageState();
}

class _DarslarPageState extends State<DarslarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Darsliklar"),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(widget.count, (index) {
          return Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage(widget.image[index]),fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
                Text(widget.name,style: TextStyle(fontSize: 20),)
              ],
            ),
          );
        }),
      ),
    );
  }
}
