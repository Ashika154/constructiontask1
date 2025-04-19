import 'package:flutter/material.dart';
import 'package:learn/Pages/CompletedPage.dart';
import 'package:learn/Pages/active.dart';
import 'package:learn/Pages/Cancelled.dart';
import 'package:learn/Pages/lottie.dart';
class Foodpage extends StatelessWidget {
  const Foodpage({super.key});

  @override
  Widget build(BuildContext context) {
    var ActiveIndex=0;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar:AppBar(
          leading: Image.asset("assets/food.jpg"),
          title: Text("Orders"),
          actions: [Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )],

          bottom: TabBar
            (
              tabs: [Tab(text: 'Home',),
                Tab(text: 'Completed',),
                Tab(text: 'Cancelled',)]),

        ),
        body: TabBarView(children:[ActiveIndex==0?Lottie():active(),
        Completedpage(),
          Cancelled ()]
        ),
      ),
    );
  }
}
