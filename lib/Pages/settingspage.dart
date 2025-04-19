import 'package:flutter/material.dart';
List<IconData>logo=[Icons.key,Icons.lock,Icons.face,Icons.library_add,Icons.chat,Icons.notifications_none,Icons.data_saver_off_outlined,Icons.language,Icons.help];
List<String>data=["Account","Privacy","Avatar","Lists","Chats","Notifications","Storage and data","App language","Help",];
List<String>datas=["Security notifaction,change number","Block contacts,disappearing messages","Create,edit,profile photo","Manage people and groups","Theme,wallpapers,chat history","Message,group & call tones","Network usage,auto-download","English (device's language)","Help center,contact us,privacy policy",];
List<IconData>aa=[Icons.camera,Icons.facebook,Icons.theater_comedy_rounded];
List<String>setname=["Open Instagram","Open Facebook","Open Threads"];
class settingspage extends StatelessWidget {
  const settingspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                    children: [
            Container(
              height: 40,
              color: Colors.black,
              child: Row(
                children: [

                  InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },

                      child: Icon(Icons.arrow_back,color: Colors.white,)),
                  Text("Settings",style: TextStyle(
                    color: Colors.white,
            
                  ),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.search,color: Colors.white),
                  )
                ],
            
              ),
            
            ),
                      Container(
             height: 80,
             width: double.infinity,
             color: Colors.black,
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child:
                   Row(
                     children: [
                       CircleAvatar(
                         radius: 40,
                         backgroundImage: AssetImage("assets/jennifer.jpg"),
                       ),
                       Column(
                         children: [
                           SizedBox(height: 10,),
                           Text("Aaa",
                           style: TextStyle(color: Colors.white),),
                           Text("aaa",
                             style: TextStyle(color: Colors.white),),
                         ],
                       ),
                       Spacer(),
                       Row(
                         children: [Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Icon(Icons.qr_code,
                           color: Colors.green,),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Icon(Icons.add_circle_outline_sharp,
                           color: Colors.green,),
                         )],
                       )
                     ],
                       ),
             ),),

                 ListView.builder(
             shrinkWrap: true,
               physics: NeverScrollableScrollPhysics(),
               itemCount:9,itemBuilder: (context,index){
                 return Container(
                   color: Colors.black,
                   child: ListTile(
                                leading: Icon(logo[index],color: Colors.white,),
                                title: Text(data[index],style: TextStyle(color: Colors.white),),
                                subtitle: Text(datas[index],style: TextStyle(color: Colors.white),),

                   ),
                 );


             }),
                      Container(
                        color: Colors.black,
                        child: ListTile(

                          leading: Icon(Icons.person,
                            color:Colors.white ),
                          title: Text("Invite a friend",style: TextStyle(color: Colors.white),),
                        ),
                      ),
            Container(
              color: Colors.black,
              child: ListTile(
              leading: Icon(Icons.mobile_screen_share_sharp,
              color:Colors.white ,),
                      title: Text("App updates",style: TextStyle(color: Colors.white)),
                    ),
            ),
                     
                      Container(
                        color: Colors.black,
                        child: ListTile(
                          leading:
                           Text("Also from Meta",style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      SizedBox(height: 150,
                     child:  ListView.builder(itemCount:3,itemBuilder: (context,index){
                      return Container(
                        color: Colors.black,
                        child: ListTile(
                          leading: Icon(aa[index],color: Colors.white,),
                          title: Text(setname[index],style: TextStyle(color: Colors.white),),
                        ),
                      );
                      })



                      )],
            
             ),
          )));




  }
}
