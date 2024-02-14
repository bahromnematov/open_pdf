import 'package:flutter/material.dart';
import 'package:open_pdf/sinflar_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFFFDFDFD).withOpacity(0.94),
        appBar: AppBar(
          backgroundColor: Colors.white.withOpacity(0.01),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.logout,
                  color: Colors.green,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.language_sharp,
                  color: Colors.green,
                )),
          ],
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                height: 120,
                width: 120,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/book.jpg"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 12,
              ),
              const Text(
                "Onlayn Darslik",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.only(left: 12),
                  margin:
                      EdgeInsets.only(left: 12, right: 12, bottom: 8, top: 8),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.book,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      TextButton(
                       onPressed: (){
                         Navigator.pushNamed(context, SinflarPage.id);
                       },
                        child: Text( "Darsliklar",
                            style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.only(left: 12),
                  margin:
                      EdgeInsets.only(left: 12, right: 12, bottom: 8, top: 8),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.school,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Text(
                        "Metodik Qullanmalar",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.only(left: 12),
                  margin:
                      EdgeInsets.only(left: 12, right: 12, bottom: 8, top: 8),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.add_chart_outlined,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Text(
                        "Testlar",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Kontaktlar",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ));
  }
}
