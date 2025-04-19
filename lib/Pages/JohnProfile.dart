import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
List<IconData>johnicon=[Icons.person,Icons.favorite_border,Icons.payment,Icons.lock_open,Icons.settings,Icons.help_outline,Icons.logout,];
List<String>johnset=["Profile","Favorite","Payment Method","Privacy Policy","Settings","Help","Logout"];
class Johnprofile extends StatelessWidget {
  const Johnprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(child: SingleChildScrollView(
       child: Column(
         children: [
           Container(
             height: 40,
             width: double.infinity,
             color: Colors.black12,
             child: Row(
               children: [
                 Icon(Icons.arrow_back_ios_new),
                 SizedBox(width: 120,),
                 Text("My Profile")
               ],
       
             ),
           ),
           Container(
             height: 220,
             width: double.infinity,
             color: Colors.black12,
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                 children: [
                   CircleAvatar(
                     radius: 80,
                     backgroundImage: AssetImage("assets/jennifer.jpg"),
                     child: Stack(
                       children: [Positioned(
                         bottom: 5,
                           right: 0,
                           child: CircleAvatar(radius: 20,child: Icon(CupertinoIcons.pen),),
       
                       )],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text("John Doe",style: TextStyle(fontSize: 15,
                     fontWeight: FontWeight.bold,color: CupertinoColors.systemBlue),),
                   )
                 ],
               ),
             ),
           ),
           ListView.builder(
               shrinkWrap: true,
             physics: NeverScrollableScrollPhysics(),
               itemCount:6,itemBuilder: (context,index){
             return ListTile(
             leading: CircleAvatar(
               backgroundColor: Colors.lightBlueAccent.shade100,
               radius: 15,
                 child: Icon(johnicon[index],color: Colors.blue,),),
             title: Text(johnset[index]),
             trailing: Icon(Icons.arrow_forward_ios_outlined),
           );
           }
           ),
           ListTile(leading: Icon(Icons.logout),
           title: Text("Logout"),),
           SizedBox(height: 40,),
           ClipRRect(

             borderRadius: BorderRadius.circular(19),
             child: Container(

               height: 50,
               width: 250,
               color: Colors.blue,
               child: Row(
                 children: [
                   SizedBox(width: 5,),
                   Icon(Icons.home),
                   SizedBox(width: 50,),
                   Icon(Icons.messenger),
                   SizedBox(width: 50,),
                   Icon(Icons.person),
                   SizedBox(width: 40,),
                   Icon(Icons.calendar_month),

                 ],
               ),
             ),
           )
         ],
         
       ),
     ),
     ),

    );
  }
}
