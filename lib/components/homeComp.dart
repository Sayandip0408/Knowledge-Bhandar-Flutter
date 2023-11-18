import 'dart:io';
import 'package:flutter/material.dart';
import 'package:knowledge_bhandar/components/MoreComp.dart';
import 'package:knowledge_bhandar/components/allQuestion.dart';
import 'package:knowledge_bhandar/screens/articles.dart';
import 'package:knowledge_bhandar/screens/computer.dart';
import 'package:knowledge_bhandar/screens/geography.dart';
import 'package:knowledge_bhandar/screens/history.dart';
import 'package:knowledge_bhandar/screens/science.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _developerUri = Uri.parse("https://portfolio-adhikarysayandip-gmailcom.vercel.app/");


class HomeComp extends StatelessWidget {
  const HomeComp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(227, 233, 255, 1),
        centerTitle: true,
        title: const Column(
                children: [
                  Text("Hello,",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(22, 50, 146, 1),
                    ),
                  ),
                  Text("Philomath!",
                    style: TextStyle(
                        color: Color.fromRGBO(22, 50, 146, 1),
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: SizedBox(
          height: 650,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 130,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(80, 118, 252, 1),
                      borderRadius: BorderRadius.circular(25),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey, //New
                              blurRadius: 1,
                              offset: Offset(1, 1)
                          ),
                        ]
                    ),
                    child: Row(
                      children: [
                        Image.asset("images/prize.png"),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Knowledge is power!", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),),
                            Text("Welcome to Knowledge Bhandar", style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w400, fontSize: 13),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      width: double.infinity,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2),
                              child: InkWell(
                                splashColor: Colors.white,
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AllQuestion()));
                                },
                                child: Ink(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(40, 78, 219, 1),
                                    borderRadius: BorderRadius.circular(10),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.grey, //New
                                            blurRadius: 1,
                                            offset: Offset(1, 1)
                                        ),
                                      ]
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Colors.white54),
                                        child: Image.asset("images/im1.png"),
                                      ),
                                      Text(
                                        "Mixed GK",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2),
                              child: InkWell(
                                splashColor: Colors.white,
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MoreComp()));
                                },
                                child: Ink(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(40, 78, 219, 1),
                                    borderRadius: BorderRadius.circular(10),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.grey, //New
                                            blurRadius: 1,
                                            offset: Offset(1, 1)
                                        ),
                                      ]
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Colors.white54),
                                        child: Image.asset("images/im2.png"),
                                      ),
                                      Text(
                                        "Categorized",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2),
                              child: InkWell(
                                splashColor: Colors.white,
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Articles()));
                                },
                                child: Ink(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(40, 78, 219, 1),
                                    borderRadius: BorderRadius.circular(10),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.grey, //New
                                            blurRadius: 1,
                                            offset: Offset(1, 1)
                                        ),
                                      ]
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Colors.white54),
                                        child: Image.asset("images/im3.png"),
                                      ),
                                      Text(
                                        "Articles",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2),
                              child: InkWell(
                                splashColor: Colors.white,
                                onTap: (){
                                  _launchUrl();
                                },
                                child: Ink(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(40, 78, 219, 1),
                                    borderRadius: BorderRadius.circular(10),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.grey, //New
                                            blurRadius: 1,
                                            offset: Offset(1, 1)
                                        ),
                                      ]
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Colors.white54),
                                        child: Image.asset("images/im4.png"),
                                      ),
                                      Text(
                                        "Developer",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      "Trending Categories",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: InkWell(
                              splashColor: Colors.white,
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Science()));
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade100,
                                  borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey, //New
                                          blurRadius: 1,
                                          offset: Offset(1, 1)
                                      ),
                                    ]
                                ),
                                child: Image.asset("images/rocket.png"),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: InkWell(
                              splashColor: Colors.white,
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const History()));
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade100,
                                  borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey, //New
                                          blurRadius: 1,
                                          offset: Offset(1, 1)
                                      ),
                                    ]
                                ),
                                child: Image.asset("images/history.png"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Science", style: TextStyle(fontWeight: FontWeight.w500),),
                      Text("History", style: TextStyle(fontWeight: FontWeight.w500),),
                    ],
                  ),
                  SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: InkWell(
                              splashColor: Colors.white,
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Geography()));
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade100,
                                  borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey, //New
                                          blurRadius: 1,
                                          offset: Offset(1, 1)
                                      ),
                                    ]
                                ),
                                child: Image.asset("images/geography.png"),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: InkWell(
                              splashColor: Colors.white,
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Computer()));
                              },
                              child: Ink(
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade100,
                                  borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey, //New
                                          blurRadius: 1,
                                          offset: Offset(1, 1)
                                      ),
                                    ]
                                ),
                                child: Image.asset("images/computer.png"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Geography", style: TextStyle(fontWeight: FontWeight.w500),),
                      Text("Computer", style: TextStyle(fontWeight: FontWeight.w500),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Future<void> _launchUrl() async {
    if (!await launchUrl(_developerUri)) {
      throw Exception('Could not launch $_developerUri');
    }
  }
}
