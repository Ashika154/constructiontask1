import 'package:flutter/material.dart';
List<String>homepic=["assets/home1.jpeg","assets/home2.jpg","assets/home3.jpg","assets/home4.jpg","assets/home5.jpg"];
class construction extends StatelessWidget {
  const construction({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
              height: 50,
              width: double.infinity,
              color: Colors.black12,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_back_ios_new),
                  ),
                  SizedBox(width: 10,),
                  Text("Construction",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                ],
              ),
            ),

              Center(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Construction",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
              )),

              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text("Lorem ipsum dolor sit amet , consectetur adipiscing  elit, sed do eiusmod  tempor incididunt  ut labore et dolore  magna aliqua.Ut enim ad minim venlam.quis nostrud exercitation.",style: TextStyle(fontSize: 13),),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(19),
                  child: Container(
                    height: 40,
                    width: 150,
                    color: Colors.lightBlueAccent,
                    child: Row(
                      children: [
                        SizedBox(width: 19,),
                        Text("Consult now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(width: 5,),
                        Icon(Icons.arrow_forward_rounded,size: 18,color: Colors.white,)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              ClipRRect(
                borderRadius: BorderRadius.circular(19),
                child: Container(
                  height: 230,
                  width: 320,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/home.jpg"),fit: BoxFit.cover)
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text("Our Projects",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text("Lorem ipsum dolor sit amet , consectetur adipiscing  elit, sed do eiusmod  tempor incididunt  ut labore et dolore  magna aliqua.Ut enim ad minim venlam.quis nostrud exercitation.",style: TextStyle(fontSize: 13)
                    ),
                  ), ],
              ),
          SizedBox(height: 15,),
              Row(
                children: [

                  TabBar(
                    isScrollable: true,
                      labelPadding: EdgeInsets.only(right: 15),
                      labelColor: Colors.red,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.red,
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: [Tab(text: "Residential",),
                  Tab(text: "Commercial",),
                       ]),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(19),
                      child: Container(
                        height: 25,
                        width: 70,
                        color: Colors.lightBlueAccent,
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("View all",style: TextStyle(fontSize:10,fontWeight: FontWeight.bold,color: Colors.white),),
                            Icon(Icons.arrow_forward_rounded,color: Colors.white,size: 14,)
                          ],
                        ),

                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 350,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                  itemBuilder: (context,index){
              return Row(
                children: [
                  Container(
                    height: 300,
                    width: 200,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 40,
                          left: 40,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(19),
                            child: Container(
                              height:180 ,
                              width: 150,
                              decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/home.jpg"),fit: BoxFit.cover)
                                                ),),),
                        ),
                        Positioned(
                          top: 47,
                          left: 34,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(19),
                            child: Container(
                              height:180 ,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/home4.jpg"),fit: BoxFit.cover)
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 55,
                          left: 26,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(19),
                            child: Container(
                              height:180 ,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage(homepic[index]),fit: BoxFit.cover)
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          left: 48,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(19),
                            child: Container(
                              height:38 ,
                              width: 115,
                              color: Colors.lightBlueAccent,
                              child: Center(child: Text("View details",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );}) ),

            ],
          ),
        )),
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              height: 60,
              width: double.infinity,
              color: Colors.blue.shade100,
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Icon(Icons.home,color: Colors.black,),
                        Text("Home",style: TextStyle(fontSize:10,fontWeight:FontWeight.bold,color: Colors.black),)
                      ],
                    ),
                  ),
                  SizedBox(width: 8,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Icon(Icons.apps_outlined,color: Colors.black,),
                        Text("Services",style: TextStyle(fontSize:10,fontWeight:FontWeight.bold,color: Colors.black),)
                      ],
                    ),
                  ),
                  SizedBox(width: 8,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Icon(Icons.message,color: Colors.black,),
                        Text("Chat",style: TextStyle(fontSize:10,fontWeight:FontWeight.bold,color: Colors.black),)
                      ],
                    ),
                  ),
                  SizedBox(width: 8,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Icon(Icons.favorite_border,color: Colors.black,),
                        Text("Saved",style: TextStyle(fontSize:10,fontWeight:FontWeight.bold,color: Colors.black),)
                      ],
                    ),
                  ),
                  SizedBox(width: 8,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Icon(Icons.person,color: Colors.black,),
                        Text("Profile",style: TextStyle(fontSize:10,fontWeight:FontWeight.bold,color: Colors.black),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )

      ),

    );
  }
}
