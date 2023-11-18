import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:knowledge_bhandar/screens/Home.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Knowledge Bhandar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 2),
            ()=> Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context)=> const Home())
            )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                  child: Container(
                    color: const Color.fromRGBO(55, 99, 237, 1),
                    child: Image.asset("images/knowledge.png", scale: 7,),
                  ),
              ),
              Expanded(
                child: Container(
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Knowledge Bhandar",
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87
                        ),
                      ),
                      Text(""),
                      Text("Knowledge is power!",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54
                        ),
                      ),
                      Text("It's quick, easy, free and always will be",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ),
    );
  }
}
