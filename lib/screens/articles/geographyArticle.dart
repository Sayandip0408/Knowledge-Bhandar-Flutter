import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GeographyArticle extends StatelessWidget{
  const GeographyArticle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Geography",
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
        child: SizedBox(
          height: 800,
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection("topicdb").where("sub", isEqualTo: "Geography").snapshots(),
            builder: (context, snapshot){
              List<Column> questionsWidget = [];
              if(snapshot.hasData){
                final questiondb = snapshot.data?.docs.reversed.toList();
                for(var q in questiondb!){
                  final questionWidget = Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${q['topic']}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                      Text('- ${q['note']}',
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                      const Divider(),
                    ],
                  );
                  questionsWidget.add(questionWidget);
                }
              }
              return ListView(
                children: questionsWidget,
              );
            },
          ),
        ),
      ),
    );
  }

}