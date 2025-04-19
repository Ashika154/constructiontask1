import 'package:flutter/material.dart';
List<IconData>pro=[Icons.person_2_outlined,Icons.info,Icons.call];
List<String>file=["Name","About","Phone"];
List<String>profile=["Ashika","busy","+91 8220619321"];
class profilepage extends StatelessWidget {
  const profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.black,leading: Icon(Icons.arrow_back,color: Colors.white,),
      title: Text("Profile",style: TextStyle(color: Colors.white),),),
      body: SafeArea(child: Column(

        children: [
          Container(
            height: 220,
            width: double.infinity,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage("assets/jennifer.jpg"),
                          child: Stack(
                            children: [
                              Positioned(
                                right:5,
                                  bottom: 5,
                                  child: CircleAvatar(

                                    radius: 25,
                                    backgroundColor: Colors.green,
                                    child: Icon(Icons.camera_alt_outlined,
                                    color: Colors.black,),


                                  ))
                            ],
                          ),
                   ) ],
                  ),
            ),
          ),



             ListView.builder(
                shrinkWrap:true,
                physics: NeverScrollableScrollPhysics(),
                itemCount:3,itemBuilder: (context,index){
            return Container(
              color: Colors.black,
              child: ListTile(
                leading: Icon(pro[index],color: Colors.white,),
                title: Text(file[index],style:TextStyle(color: Colors.white) ,),
                subtitle: Text(profile[index],style:TextStyle(color: Colors.white) ),
              ),
            );
            }),

          SizedBox(height: 15,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.lock),
                RichText(
                    text: const TextSpan(
                        text: " Your personal messages are",
                        style: TextStyle(
                          color: Colors.black,


                        ),
                        children: [
                          TextSpan(
                            text: " end-to-end encrypted",
                            style: TextStyle(
                              color: Colors.green,
                            ),

                          ),
                          TextSpan(
                            text: " on all  your devices",
                            style: TextStyle(
                              color: Colors.black,
                              overflow: TextOverflow.ellipsis,


                            ),



                          ),

                        ]







                    )),

              ],
            ),
          )
        ],
      ),

      ),

    );
  }
}
