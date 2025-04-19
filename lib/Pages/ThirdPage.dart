import 'package:flutter/material.dart';
List<IconData>icon=[Icons.arrow_forward_ios_outlined,Icons.arrow_forward_ios_outlined,Icons.arrow_forward_ios_outlined];
List<String>Name=[" One week Internship Program","Become a full stack developer","The Greek Network of UI/UX"];
List<String>SUB=["Announcement","Announcement","Announcement"];
class Thirdpage extends StatelessWidget {
  const Thirdpage({super.key});

  @override
  Widget build(BuildContext context) {
    var  ScreenWidth=MediaQuery.of(context).size.width;
    var ScreenHeight=MediaQuery.of(context).size.height;


    double iconSize = ScreenWidth * 0.08;
    double titleTextSize = ScreenWidth * 0.05;
    return Scaffold(
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 50,
            color: Colors.black,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Communities",
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                ),
                Spacer(),
                Icon(Icons.qr_code_scanner_outlined,
                color: Colors.white),

                Icon(Icons.more_vert,
                    color: Colors.white),
              ],
              ),
          ),

              SizedBox(height: 10,),
        ListTile(
           leading:
           Container(
             height: 40,
             width: 40,
             child: Icon(Icons.people),

             decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
             color: Colors.grey),
          ),

          title: Text("New Community"),
        ),
          SizedBox(height: 10,),
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset("assets/nature.jpg"),
            ),
            title: Text("CSE-ACEW"),
          ),

          SizedBox(height: 10,),
          ListTile(
            leading: Container(
             height: 40,
              width: 40,
              child: Icon(Icons.volume_up_outlined),

    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
      color: Colors.grey,
    ),

            ),
            title: Row(
              children: [
                Text("name"),
                Spacer(),
                Text("12:00")
              ],
            ),
            subtitle: Row(
              children: [
                Text("photo"),

              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
            ),
            title: Row(
              children: [
                Text("CSE A "),
                Spacer(),
                Text("Yesterday")
              ],
            ),
            subtitle: Row(
              children: [
                Icon(Icons.image),
                Text("Photo")],
            ),
          ),

           ListView.builder(
               shrinkWrap: true,
               physics: NeverScrollableScrollPhysics(),
               itemCount:3,itemBuilder: (context,index) {
             return Column(
               children: [
                 ListTile(
                   leading: Icon(icon[index]),
                   title: Row(
                     children: [
                       Text("View All"),
                     ],
                   ),
                 ),
                 ListTile(
             leading: Container(
             height: 40,
             width: 40,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
             color: Colors.grey)),
             title: Row(
             children: [
             Text(Name[index]),

             ],),),
                 ListTile(
                   leading: Container(
                       height: 40,
                       width: 40,
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                           color: Colors.grey)),
                   title: Row(
                     children: [
                       Text(SUB[index]),

                     ],),),
               ]);})]),),)
      );

  }
}
