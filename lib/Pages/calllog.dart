import 'package:flutter/material.dart';
class calllog extends StatelessWidget {
  const calllog({super.key, this.name});
  final name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.black,
       leading: Icon(Icons.arrow_back,color: Colors.white,),
       title: Text("Call info",style: TextStyle(color: Colors.white),),
       actions: [Icon(Icons.more_vert,color: Colors.white,)],
     ),
      body: SafeArea(child: Column(
        children: [Container(
          height: 270,
          width: double.infinity,
          color: Colors.black,
          child: Column(
            children: [Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage("assets/jennifer.jpg"),
              ),
            ),
              SizedBox(
                height: 10,
              ),
              Text("maa",
              style: TextStyle(color: Colors.white),),
              SizedBox(height: 10,),
              Text("+91 8220619324",style: TextStyle(color: Colors.white),)
            ] 


          ),
        ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.black45,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 65,
                    width: 100,
                    child: Column(
                      children: [
                        SizedBox(height: 7,),
                        Icon(Icons.message,color: Colors.green,
                        ),
                        SizedBox(height: 5,),
                        Text("Message",style: TextStyle(color: Colors.white),)
                      ],
                    ),

                    decoration: BoxDecoration(
                        color: Colors.black,
                      borderRadius: BorderRadius.circular(11),

                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 65,
                    width: 100,
                    child: Column(

                      children: [
                        SizedBox(height: 7,),
                        Icon(Icons.call,color: Colors.green,),
                        SizedBox(height: 5,),
                        Text("Audio",style: TextStyle(color: Colors.white),)
                      ],
                    ),

                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(11)
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 65,
                    width: 100,
                    child: Column(
                      children: [
                        SizedBox(height: 7,),
                        Icon(Icons.video_camera_back_outlined,color: Colors.green,),
                        SizedBox(height: 5,),
                        Text("Video",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(11)
                    ),

                  ),
                ),
                
              ],
            ),

          ),
          ListTile(
            tileColor: Colors.black,

            leading: Text("Yesterday",style: TextStyle(color: Colors.white),),
          ),
          ListTile(
            tileColor: Colors.black,
            leading: Icon(Icons.phone_callback,color: Colors.green,),
            title: Row(
              children: [
                Text("Incoming",style: TextStyle(color: Colors.white),),
                Spacer(),
                Text('1m 17s',style: TextStyle(color: Colors.white),)
              ],
            ),
            subtitle: Row(
              children: [
                Text("11:43 AM ",style: TextStyle(color: Colors.white),),
                Spacer(),
                Text("302 kB",style: TextStyle(color: Colors.white),)
              ],
            ),
          )
          



        ],
      )),
    );
  }
}
