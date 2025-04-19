import 'package:flutter/material.dart';


class callingpage extends StatelessWidget {
  final dp;
  final call;
  const callingpage({super.key, this.dp, this.call});


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
                  child: Icon(Icons.compare_arrows),
                ),
              ),
              SizedBox(width: 90,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(call),
                  Row(
                    children: [
                      Text("Calling..")
                    ],
                  ),
                ],

              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 20,
                  child: Icon(Icons.person_add),
                ),
              ),

            ],
          ),


        ),
        SizedBox(height: 90,),
        Column(
          children: [
            CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage(dp),
            ),
          ],

        ),
SizedBox(height: 330,),
Container(
  height: 70,
  width: double.infinity,
  //color: Colors.grey,
  child: Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 20,
          child: Icon(Icons.more_horiz),
        ),
      ),
      SizedBox(width: 25,),
      CircleAvatar(
        radius: 20,
        child: Icon(Icons.video_camera_back),
      ),
      SizedBox(width: 30,),
      CircleAvatar(
        radius: 20,
        child: Icon(Icons.volume_up),
      ),
      SizedBox(width: 30,),
      CircleAvatar(
        radius: 20,
        child: Icon(Icons.settings_voice),
      ),
      SizedBox(width: 30,),
      InkWell(
        onTap: (){
          Navigator.pop(context);
        },
        child: CircleAvatar(
          backgroundColor: Colors.red,
          radius: 20,
          child: Icon(Icons.call_end_rounded,
          color: Colors.white,),
        ),
      ),

    ],
  ),
)
      ],
      ),

      ),
    );
  }
}
