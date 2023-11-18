import 'package:flutter/material.dart';
import 'package:knowledge_bhandar/screens/articles/biologyArticle.dart';
import 'package:knowledge_bhandar/screens/articles/chemistryArticle.dart';
import 'package:knowledge_bhandar/screens/articles/computerArticle.dart';
import 'package:knowledge_bhandar/screens/articles/geographyArticle.dart';
import 'package:knowledge_bhandar/screens/articles/historyArticle.dart';
import 'package:knowledge_bhandar/screens/articles/physicsArticle.dart';

class Articles extends StatelessWidget{
  const Articles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Articles",
          style: TextStyle(
            color: Color.fromRGBO(22, 50, 146, 1),
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(227, 233, 255, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: InkWell(
                    splashColor: Colors.white70,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const ComputerArticle()));
                    },
                    child: Ink(
                      padding: const EdgeInsets.all(10),
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue.shade100,
                        boxShadow: const [
                          BoxShadow(
                          color: Colors.grey, //New
                          blurRadius: 1,
                          offset: Offset(1, 1)
                          ),
                        ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("images/computer.png"),
                          const Text("Computer Science",
                            style: TextStyle(
                              color: Color.fromRGBO(22, 50, 146, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: InkWell(
                    splashColor: Colors.white70,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const HistoryArticle()));
                    },
                    child: Ink(
                      padding: const EdgeInsets.all(10),
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue.shade100,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey, //New
                                blurRadius: 1,
                                offset: Offset(1, 1)
                            ),
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("images/history.png"),
                          const Text("Indian History",
                            style: TextStyle(
                              color: Color.fromRGBO(22, 50, 146, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: InkWell(
                    splashColor: Colors.white70,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const GeographyArticle()));
                    },
                    child: Ink(
                      padding: const EdgeInsets.all(10),
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue.shade100,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey, //New
                                blurRadius: 1,
                                offset: Offset(1, 1)
                            ),
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("images/geography.png"),
                          const Text("Geography",
                            style: TextStyle(
                              color: Color.fromRGBO(22, 50, 146, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: InkWell(
                    splashColor: Colors.white70,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const BiologyArticle()));
                    },
                    child: Ink(
                      padding: const EdgeInsets.all(10),
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue.shade100,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey, //New
                                blurRadius: 1,
                                offset: Offset(1, 1)
                            ),
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("images/biology.png"),
                          const Text("Bio Science",
                            style: TextStyle(
                              color: Color.fromRGBO(22, 50, 146, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: InkWell(
                    splashColor: Colors.white70,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const PhysicsArticle()));
                    },
                    child: Ink(
                      padding: const EdgeInsets.all(10),
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue.shade100,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey, //New
                                blurRadius: 1,
                                offset: Offset(1, 1)
                            ),
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("images/physics.png"),
                          const Text("Physical Science",
                            style: TextStyle(
                              color: Color.fromRGBO(22, 50, 146, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: InkWell(
                    splashColor: Colors.white70,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const ChemistryArticle()));
                    },
                    child: Ink(
                      padding: const EdgeInsets.all(10),
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue.shade100,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey, //New
                                blurRadius: 1,
                                offset: Offset(1, 1)
                            ),
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("images/chemistry.png"),
                          const Text("Chemical Science",
                            style: TextStyle(
                              color: Color.fromRGBO(22, 50, 146, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
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
    );
  }

}