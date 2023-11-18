import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:knowledge_bhandar/components/MoreComp.dart';
import 'package:knowledge_bhandar/components/allQuestion.dart';
import 'package:knowledge_bhandar/components/homeComp.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: NavigationBar(
              backgroundColor: const Color.fromRGBO(224, 231, 254, 0.596078431372549),
              onDestinationSelected: (int index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              indicatorColor: const Color.fromRGBO(80, 118, 252, 1),
              elevation: 0,
              selectedIndex: currentPageIndex,
              destinations: const <Widget>[
                NavigationDestination(
                  selectedIcon: Icon(FluentIcons.home_20_filled, color: Colors.white,),
                  icon: Icon(FluentIcons.home_20_regular, color: Color.fromRGBO(22, 50, 146, 1),),
                  label: 'Home',
                ),
                NavigationDestination(
                  selectedIcon: Icon(FluentIcons.book_20_filled, color: Colors.white,),
                  icon: Icon(FluentIcons.book_20_regular, color: Color.fromRGBO(22, 50, 146, 1),),
                  label: 'All Questions',
                ),
                NavigationDestination(
                  selectedIcon: Icon(FluentIcons.catch_up_20_filled, color: Colors.white,),
                  icon: Icon(FluentIcons.catch_up_20_regular, color: Color.fromRGBO(22, 50, 146, 1),),
                  label: 'Category',
                ),
              ],
            ),
          ),
        ),
      ),
      body: <Widget>[
        HomeComp(),
        AllQuestion(),
        MoreComp(),
      ][currentPageIndex],
    );
  }
}