import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AllQuestion extends StatelessWidget{
  const AllQuestion({super.key});

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
            Text("Mixed GK",
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
        padding: EdgeInsets.all(10),
        child: SizedBox(
          height: 800,
          width: double.infinity,
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection("questiondb").snapshots(),
            builder: (context, snapshot){
              List<Column> questionsWidget = [];
              if(snapshot.hasData){
                final questiondb = snapshot.data?.docs.reversed.toList();
                for(var q in questiondb!){
                  final questionWidget = Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Q. ${q['question']}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      Text('A. ${q['answer']}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                            color: Color.fromRGBO(22, 50, 146, 1),
                        ),
                      ),
                      Text('Category: ${q['category']}',
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color.fromRGBO(166, 70, 39, 1.0),
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