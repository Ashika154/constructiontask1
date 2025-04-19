
import 'package:flutter/material.dart';
List<String>images=["assets/nature.jpg","assets/sun.jpg","assets/watch.jpg",
];
List<String>name=["nature","sun","watch"];
List<String>pic=["assets/aa.jpg","assets/trophy.jpg","assets/sports.jpg","assets/sports.jpg"];
List<String>names=["HK Unfiltered","Star Sports India","Dream11","Who Cares?"];
List<String>sub=["8.4M followers","12.7M followers","5.7M followers","2.3M followers"];
List<String>status=["Add Status","Aaa","bbb","ccc","ddd","eee","ffff","ggg","hhh","iii","jjj","kkk","lll","mmm","nnn","ooo"];
List<String>PIC=["assets/jennifer.jpg","assets/trophy.jpg","assets/sports.jpg","assets/sun.jpg","assets/jennifer.jpg","assets/nature.jpg","assets/watch.jpg","assets/aa.jpg","assets/trophy.jpg","assets/sports.jpg","assets/sun.jpg","assets/jennifer.jpg","assets/nature.jpg","assets/watch.jpg","assets/watch.jpg"];
List<String>pics=["assets/jennifer.jpg","assets/sports.jpg","assets/sun.jpg","assets/aa.jpg","assets/jennifer.jpg","assets/watch.jpg","assets/nature.jpg","assets/trophy.jpg","assets/watch.jpg","assets/trophy.jpg","assets/sports.jpg","assets/sun.jpg","assets/watch.jpg","assets/jennifer.jpg","assets/nature.jpg",];
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(child: SingleChildScrollView(

        child: Column(
          children: [
          Container(
          height: 60,
          color: Colors.black,
          child: Row(
              children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios,
                color: Colors.white,),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),

              child: Text(
              "updates",
              style: TextStyle(
                color: Colors.white,
              ),
                      ),
            ),
              Spacer(),
              Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(
                  Icons.qr_code_scanner_outlined,
                  color: Colors.white,
                ),
              ),

              Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(

                  Icons.search,
                  color: Colors.white,

                ),),
                Padding(
                padding: EdgeInsets.all(4.0),
                 child:  PopUpMenu(
                   menuList: [
                     PopupMenuItem(child: ListTile(leading: Icon(Icons.chat),title: Text("Create Channel"),)),
                     PopupMenuItem(child: ListTile(leading: Icon(Icons.lock),title: Text("Status privacy"),)),
                     PopupMenuItem(child: ListTile(leading: Icon(Icons.settings),title: Text("Settings"),))
                   ],
                    icon: Icon(
                     Icons.more_vert,
                    color: Colors.white,
                   ),
                 ),
              ),
             ] ),
          ),
            Container(
              height: 50,
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Status",
                    style: TextStyle(
                      color: Colors.black,
                    ),),
                  )
                ],
              ),
            ),
         SizedBox(height: 10,),
         SizedBox(height: 180,
           child:  ListView.builder(scrollDirection:Axis.horizontal,
               itemCount:15,
               itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [

              Container(

                height: 150, width: 90,

                decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                       image: DecorationImage(image: AssetImage(pics[index],),fit: BoxFit.cover ),
                    color: Colors.grey,

                  ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(PIC[index]),
                      ),
                      Spacer(),
                      Column(
                        children: [
                   Center(child: Text(status[index]))

  ],
),],

                  ),


                ),

              ),

            ],
          ),
          
        );}),),
            SizedBox(height: 10),
             ListTile(
              title: Text("Channels"),
              subtitle: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Stay Updated on topics that matter to you.Find channels to follow below."),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 20,
                child: Row(
                  children: [
                    Text("Find channels to follow")
                  ],

                ),
              ),
            ),
    SizedBox(height: 10),
         ConstrainedBox(
           constraints: BoxConstraints(maxHeight: 350),
           child: ListView.builder(
               physics: NeverScrollableScrollPhysics(),
               itemCount:4,itemBuilder: (context,index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(pic[index]),
              ),

              title: Row(
                children: [
                  Expanded(child: Text(names[index],overflow: TextOverflow.ellipsis,maxLines:1)),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.verified,
                    color: Colors.blue[700],),

                  ),],
              ), subtitle: Text(sub[index]),
              trailing: Container(
                height: 20,
                width: 60,
                child: Center(
                  child: Text("follow",
                  style: TextStyle(
                    color: Colors.greenAccent,
                  ),),
                ),


                decoration: BoxDecoration(

                    color: Colors.green[900],

                  borderRadius: BorderRadius.circular(9),

                ),
              ),);


               } ),
         ),
            ListTile(
              leading: Container(
                height: 30,
                width: 120,
                child: Center(
                  child: Text("Explore more",
                  style: TextStyle(color: Colors.greenAccent[700]),),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20)
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

