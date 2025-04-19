import 'package:flutter/material.dart';

List<String>message=["hii","hello","how r u????"];
List<String>reply=["hey","hii","fine!!!"];
class Textpage extends StatelessWidget {
  const Textpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: SingleChildScrollView(
        child:Column(
        children: [
        Container(
        height: 50,
        color: Colors.black,
        child: Row(
          children: [
            Icon(Icons.arrow_back,
              color: Colors.white,
            ),

            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/jennifer.jpg"),

            ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text("azh",
               style: TextStyle(
                 color: Colors.white
               ),),
             ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.video_camera_back_outlined,
              color: Colors.white,),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.call,
                color: Colors.white,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert,
                color: Colors.white,),
            ),],),
      ),
        SizedBox(height: 10,),
        SizedBox(
            height: 500,
            child:
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),itemCount:3,itemBuilder: (context,index){
            return Column(
              children: [
                ListTile(
                  leading: Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(9),),
                    child: Center(
                    child: Text(message[index],
                    style: TextStyle(
                      color: Colors.white,
                    ),),),),

                ),
                ListTile(
                trailing: Container(
                height: 30, width: 100,
                 decoration: BoxDecoration(
                color: Colors.green[900],
                borderRadius: BorderRadius.circular(10)),
                  child: Center(
                  child: Text(reply[index],
                    style: TextStyle(
                      color: Colors.white,),),),),
                )],
            );},
          ),
        ),



          ],

        ),


        ) ));

  }
}

