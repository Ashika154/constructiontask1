import 'package:flutter/material.dart';
import 'package:learn/snapchatpage.dart';
class snapchat extends StatelessWidget {
  const snapchat({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          radius: 10,
          backgroundImage: AssetImage("assets/jennifer.jpg"),

        ),
        title: Row(
          children: [
            Icon(Icons.search),
            SizedBox(width: 30,),
            Text("Chats"),
          ],

        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
                child: Icon(Icons.person_add)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
                child: Icon(Icons.more_horiz)),
          )
        ],
        bottom: TabBar(

            tabs:[Tab(text:"All"),
        Tab(text: "Unread"),
          Tab(text: "Birthday",),
          Tab(text: "Groups",),
          ]),

      ),
        body: TabBarView(children: [snapchatpage()]),
      ),
    );
  }
}
