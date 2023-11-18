import 'package:flutter/material.dart';
import 'package:knowledge_bhandar/screens/articles.dart';
import 'package:knowledge_bhandar/screens/biology.dart';
import 'package:knowledge_bhandar/screens/chemistry.dart';
import 'package:knowledge_bhandar/screens/computer.dart';
import 'package:knowledge_bhandar/screens/geography.dart';
import 'package:knowledge_bhandar/screens/history.dart';
import 'package:knowledge_bhandar/screens/physics.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _developerUri = Uri.parse("https://portfolio-adhikarysayandip-gmailcom.vercel.app/");

class MoreComp extends StatelessWidget{
  const MoreComp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text("Knowledge Bhandar",
              style: TextStyle(
                color: Color.fromRGBO(22, 50, 146, 1),
                fontWeight: FontWeight.w700,
              ),
            ),
            Text("Categories",
              style: TextStyle(
                  color: Color.fromRGBO(22, 50, 146, 1),
                  fontWeight: FontWeight.w700,
                  fontSize: 12
              ),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(227, 233, 255, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          height: 680,
          child: SingleChildScrollView(
            child: Column(
              children: [
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Biology()));
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
                              child: Image.asset("images/biology.png"),
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
                    Text("Biology", style: TextStyle(fontWeight: FontWeight.w500),),
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Physics()));
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
                              child: Image.asset("images/physics.png"),
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Chemistry()));
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
                              child: Image.asset("images/chemistry.png"),
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
                    Text("Physics", style: TextStyle(fontWeight: FontWeight.w500),),
                    Text("Chemistry", style: TextStyle(fontWeight: FontWeight.w500),),
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Articles()));
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
                              child: Image.asset("images/im3.png"),
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
                              _launchUrl();
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
                              child: Image.asset("images/im4.png"),
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
                    Text("Articles", style: TextStyle(fontWeight: FontWeight.w500),),
                    Text("Developer", style: TextStyle(fontWeight: FontWeight.w500),),
                  ],
                ),
              ],
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