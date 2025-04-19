import 'package:flutter/material.dart';
import 'package:learn/Pages/callingpage.dart';
List<String>call=["aaa","bbb","ccc","ddd","eee","fff","ggg","hhh","iii","jjj"];
List<String>tym=["34 minutes ago","Today, 10:02 AM","Yesterday,2:59 PM","March 7,8:13 AM","March 15,8:13 AM","March 15,8:13 AM","March 15,8:13 AM","March 15,8:13 AM","March 15,8:13 AM","March 15,8:13 AM","March 02,8:13 AM"];
List<String>dp=["assets/jennifer.jpg","assets/sports.jpg","assets/sun.jpg","assets/aa.jpg","assets/jennifer.jpg","assets/watch.jpg","assets/nature.jpg","assets/trophy.jpg","assets/watch.jpg","assets/trophy.jpg","assets/sports.jpg","assets/sun.jpg","assets/watch.jpg","assets/jennifer.jpg","assets/nature.jpg",];
class callpage extends StatelessWidget {
  const callpage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(

              children: [Container(

                    height: 50,
                    color: Colors.black,
                    child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Calls",style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.qr_code_scanner_outlined,
                color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.search,
                  color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.more_vert,
                  color: Colors.white,
                ),
              ),

            ],),),
                    Container(
            height: 40,
            width: double.infinity,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Favorites",style: TextStyle(color: Colors.white),
              ),
            ),
                    ),
                    Container(
            height: 60,
            width: double.infinity,
            color: Colors.black,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.green,
                    child:
                    Icon(Icons.favorite,
                    color: Colors.black,),

                  ),
                ),
                Text("Add favorite",
                style: TextStyle(
                  color: Colors.white
                ),),

              ],
            )
                    ),
                    Container(
            height: 40,
            width: double.infinity,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Recent",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white
              ),),
            ),
                    ),
                ListView.builder(
              shrinkWrap:true,
              physics: NeverScrollableScrollPhysics(),
               itemCount:10,itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>callingpage(dp:dp[index],call:call[index])));
              },
              child: Container(
                color: Colors.black,
                child: ListTile(

                leading:
                 CircleAvatar(
                  radius: 30,
                   backgroundImage: AssetImage(dp[index],
                   ),
                ),
                title: Text(call[index],style: TextStyle(color: Colors.white), ),

                  subtitle: Row(
                  children: [
                    Icon(Icons.call_received,
                    color: Colors.green,),
                    Text(tym[index],style: TextStyle(color: Colors.white)),
                  ],
                ),
                trailing: Icon(Icons.call,
                    color: Colors.white),
                ),
              ),
            );})],),
          )),);
  }
}
