import 'package:flutter/material.dart';
import 'package:learn/Pages/SecondPage.dart';
import 'package:learn/Pages/ThirdPage.dart';
import 'package:learn/Pages/settingspage.dart';

import 'TextPage.dart';

List<String>images=["assets/nature.jpg","assets/sun.jpg","assets/watch.jpg"
];

List<String>name=["nature","sun","watch"];
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
          
        ),
      ),
        floatingActionButton: FloatingActionButton(onPressed:()
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Textpage()));
    },
          child: Icon(Icons.add),
          foregroundColor: Colors.white,
          backgroundColor: Colors.green,

        ),
      body: SafeArea(

        child: Column(
          children: [
            Container(
              height: 60,

              child: Row(
                children: [
                  Text(
                    "wattsapp",
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.qr_code_scanner_outlined,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: PopUpMenu(
                      menuList: [
                        PopupMenuItem(
                            child: ListTile(leading: Icon(Icons.person_add),title: Text("New Group"),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
                              },)),
                        PopupMenuItem(child: ListTile(leading: Icon(Icons.volume_up),title: Text("New broadcast"),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Thirdpage()));
                          },),),
                        PopupMenuItem(child: ListTile(leading: Icon(Icons.devices),title: Text("Linked devices"),)),
                        PopupMenuItem(child: ListTile(leading: Icon(Icons.star_border_outlined),title: Text("Starred messages"),)),
                        PopupMenuItem(child: ListTile(leading: Icon(Icons.payment),title: Text("Payments"),)),
                        PopupMenuItem(child: ListTile(leading: Icon(Icons.settings),title: Text("Settings"),
                          onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>settingspage()));
                          },
                        ))


                      ],
                       icon: Icon(
                        Icons.more_vert,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 3,itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(images[index]),
                    ),
                    title: Row(
                      children: [
                        Text(name[index]),
                        Spacer(),
                        Text("11:11")
                      ],
                    ),
                    subtitle: Row(
                      children: [
                        Text("hello"),
                        Spacer(),
                        Container(
                          height: 20,
                          width: 20,
                          child: Text(" 7"),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                            
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )],
        ),
      ),


    );



  }
}
class PopUpMenu extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  PopUpMenu({super.key,required this.icon,required this.menuList});
  final Widget?icon;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(icon: icon,
        itemBuilder: (context)=>menuList);
  }
}

