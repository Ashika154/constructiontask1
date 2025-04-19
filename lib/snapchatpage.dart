import 'package:flutter/material.dart';
class snapchatpage extends StatelessWidget {
  const snapchatpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: [
        Container(
          height: 70,
          width: double.infinity,
          color: Colors.grey,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 20,
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 15,),
                  Text("AAA"),
                  Row(
                    children: [
                      SizedBox(height: 15,),
                      Icon(Icons.send),
                      Text("Delivered . 4m . 5"),
                    ],

                  ),


                ],
              ),

            ],
          ),
        )
      ],)),
    );
  }
}

