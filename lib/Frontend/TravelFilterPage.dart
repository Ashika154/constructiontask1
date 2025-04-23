                                                                                                                            import 'package:flutter/material.dart';
                                                                                                                              List<IconData>icon=[Icons.place,Icons.place,Icons.access_time_filled];
                                                                                                                              List<String>Traveloptions=["Search From City","Search To City","3 days"];
                                                                                                                              List<String>Travelplanoptions=["Resort","Hiking,Nightlife","Yes","Regular discounts","Above 18","4-5"];
                                                                                                                              List<String>travelplace=["From City","To City","Duration",];
                                                                                                                              List<String>Traveldetails=["Accommodation","Activities","All inclusive Package","Special Offers","Accessibility","Ratings"];
                                                                                                                              class TravelFilterPage extends StatelessWidget {
                                                                                                                              const TravelFilterPage({super.key});

                                                                                                                              @override
                                                                                                                              Widget build(BuildContext context) {
                                                                                                                                return Scaffold(
                                                                                                                                  appBar: AppBar(title: Icon(Icons.arrow_back_ios_new),),
                                                                                                                                  body: SafeArea(
                                                                                                                                    child: SingleChildScrollView(
                                                                                                                                      child: Column(
                                                                                                                                      
                                                                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                                      
                                                                                                                                      children: [
                                                                                                                                        Padding(
                                                                                                                                          padding: const EdgeInsets.only(left: 25.0,top: 10.0),
                                                                                                                                          child: Text("Travel Type",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                                                                                                                        ),
                                                                                                                                        Padding(
                                                                                                                                          padding: const EdgeInsets.only(left: 22.0,right: 18.0,top: 7.0),
                                                                                                                                          child: Container(
                                                                                                                                            height: 45,
                                                                                                                                            width: 310,
                                                                                                                                            decoration: BoxDecoration(
                                                                                                                                              border: Border.all(color: Colors.black,width: 1),
                                                                                                                                              borderRadius: BorderRadius.circular(18)
                                                                                                                                            ),
                                                                                                                                      
                                                                                                                                            child: Row(
                                                                                                                                      
                                                                                                                                              children: [
                                                                                                                                                Padding(
                                                                                                                                                  padding: const EdgeInsets.all(8.0),
                                                                                                                                                  child: Text("Adventure,Nightlife",style: TextStyle(color: Colors.black26),),
                                                                                                                                                ),
                                                                                                                                                SizedBox(width: 110,),
                                                                                                                                                Icon(Icons.arrow_drop_down),
                                                                                                                                              ],
                                                                                                                                            ),
                                                                                                                                      
                                                                                                                                          ),
                                                                                                                                          
                                                                                                                                        ),
                                                                                                                                      
                                                                                                                                        SizedBox(
                                                                                                                                          height: 290,
                                                                                                                                          child: ListView.builder(
                                                                                                                                            physics: NeverScrollableScrollPhysics(),
                                                                                                                                              itemCount: 3,
                                                                                                                                              itemBuilder: (context,index){
                                                                                                                                              return ListTile(title: Row(
                                                                                                                                              children: [
                                                                                                                                                Icon(icon[index]),
                                                                                                                                                Text(travelplace[index],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                                                                                                                                              ],
                                                                                                                                            ),
                                                                                                                                            subtitle: Padding(
                                                                                                                                              padding: const EdgeInsets.only(left: 10.0,right: 5.0,top: 7.0),
                                                                                                                                              child: Container(height: 45,
                                                                                                                                                width: 350,
                                                                                                                                                decoration: BoxDecoration(
                                                                                                                                                    border: Border.all(color: Colors.black,width: 1),
                                                                                                                                                    borderRadius: BorderRadius.circular(18)
                                                                                                                                                ),

                                                                                                                                                child: Stack(

                                                                                                                                                  children: [Positioned(
                                                                                                                                                    top: 10,
                                                                                                                                                      right:20,
                                                                                                                                                      child: Row(
                                                                                                                                                        children: [
                                                                                                                                                          Icon(Icons.arrow_drop_down_sharp),
                                                                                                                                                        ],
                                                                                                                                                      ),

                                                                                                                                                  ),
                                                                                                                                                    Positioned(
                                                                                                                                                      top: 10,
                                                                                                                                                      left: 10,
                                                                                                                                                      child: Row(
                                                                                                                                                        children: [
                                                                                                                                                          Text(Traveloptions[index],style: TextStyle(color: Colors.black26),),
                                                                                                                                                        ],
                                                                                                                                                      ),

                                                                                                                                                    ),
                                                                                                                                                  ],
                                                                                                                                                ),

                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                          );
                                                                                                                                          }),
                                                                                                                                        ),
                                                                                                                                        Padding(
                                                                                                                                          padding: const EdgeInsets.only(left: 18.0),
                                                                                                                                          child: Row(
                                                                                                                                            children: [
                                                                                                                                              Icon(Icons.person_pin),
                                                                                                                                              Text("No.of Guests",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))
                                                                                                                                            ],
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      Padding(
                                                                                                                                        padding: const EdgeInsets.only(left: 22.0,top: 7.0),
                                                                                                                                        child: Row(
                                                                                                                                          children: [
                                                                                                                                            Container(
                                                                                                                                              height: 45,
                                                                                                                                              width: 100,
                                                                                                                                              decoration: BoxDecoration(
                                                                                                                                                  border: Border.all(color: Colors.black,width: 1),
                                                                                                                                                  borderRadius: BorderRadius.circular(18)
                                                                                                                                              ),
                                                                                                                                              child: Row(
                                                                                                                                                children: [
                                                                                                                                                  Text("No.of Adults",style: TextStyle(fontSize: 11,color: Colors.black26),),

                                                                                                                                                  Icon(Icons.arrow_drop_down),
                                                                                                                                                ],
                                                                                                                                              ),
                                                                                                                                      
                                                                                                                                            ),
                                                                                                                                            SizedBox(width: 5,),
                                                                                                                                            Container(
                                                                                                                                              height: 45,
                                                                                                                                              width: 100,
                                                                                                                                              decoration: BoxDecoration(
                                                                                                                                                  border: Border.all(color: Colors.black,width: 1),
                                                                                                                                                  borderRadius: BorderRadius.circular(18)
                                                                                                                                              ),
                                                                                                                                              child: Row(
                                                                                                                                                children: [
                                                                                                                                                  Text("No.of Child",style: TextStyle(fontSize: 11,color: Colors.black26),),
                                                                                                                                                  Icon(Icons.arrow_drop_down),
                                                                                                                                                ],
                                                                                                                                              ),
                                                                                                                                      
                                                                                                                                            ),
                                                                                                                                            SizedBox(width: 5,),
                                                                                                                                            Container(
                                                                                                                                              height: 45,
                                                                                                                                              width: 100,
                                                                                                                                              decoration: BoxDecoration(
                                                                                                                                                  border: Border.all(color: Colors.black,width: 1),
                                                                                                                                                  borderRadius: BorderRadius.circular(18)
                                                                                                                                              ),
                                                                                                                                              child: Row(
                                                                                                                                                children: [
                                                                                                                                                  Text("No.of Infants",style: TextStyle(fontSize: 11,color: Colors.black26),),
                                                                                                                                                  Icon(Icons.arrow_drop_down,size: 20,),
                                                                                                                                                ],
                                                                                                                                              ),
                                                                                                                                      
                                                                                                                                            ),
                                                                                                                                          ],
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                        SizedBox(
                                                                                                                                          height: 580,
                                                                                                                                          child: ListView.builder(
                                                                                                                                              physics: NeverScrollableScrollPhysics(),
                                                                                                                                              itemCount: 6,
                                                                                                                                              itemBuilder: (context,index){
                                                                                                                                                return ListTile(title: Row(
                                                                                                                                                  children: [
                                                                                                                                                    Text(Traveldetails[index],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                                                                                                                                                  ],
                                                                                                                                                ),
                                                                                                                                                  subtitle: Padding(
                                                                                                                                                    padding: const EdgeInsets.only(left: 10.0,right: 5.0,top: 7.0),
                                                                                                                                                    child: Container(height: 45,
                                                                                                                                                      width: 350,
                                                                                                                                                      decoration: BoxDecoration(
                                                                                                                                                          border: Border.all(color: Colors.black,width: 1),
                                                                                                                                                          borderRadius: BorderRadius.circular(18)
                                                                                                                                                      ),
                                                                                                                                                      child:Stack(
                                                                                                                                                      children: [Positioned(
                                                                                                                                                      top: 10,
                                                                                                                                                      right:20,
                                                                                                                                                      child: Row(
                                                                                                                                                        children: [
                                                                                                                                                          Icon(Icons.arrow_drop_down_sharp),
                                                                                                                                                        ],
                                                                                                                                                      ),

                                                                                                                                                    ),
                                                                                                                                                    Positioned(
                                                                                                                                                      top: 10,
                                                                                                                                                      left: 10,
                                                                                                                                                      child: Row(
                                                                                                                                                        children: [
                                                                                                                                                          Text(Travelplanoptions[index],style: TextStyle(color: Colors.black26),),
                                                                                                                                                        ],
                                                                                                                                                      ),

                                                                                                                                                    ),
                                                                                                                                                    ],
                                                                                                                                                  ),
                                                                                                                                                    ),
                                                                                                                                                  ),
                                                                                                                                                );
                                                                                                                                              }),
                                                                                                                                        ),

                                                                                                                                        Padding(
                                                                                                                                          padding: const EdgeInsets.all(8.0),
                                                                                                                                          child: Row(
                                                                                                                                            children: [
                                                                                                                                              SizedBox(width: 22,),
                                                                                                                                              Container(
                                                                                                                                                height: 45,
                                                                                                                                                width: 140,
                                                                                                                                                decoration: BoxDecoration(
                                                                                                                                                  borderRadius: BorderRadius.circular(19),
                                                                                                                                                  border: Border.all(color: Colors.blue,width: 2)
                                                                                                                                                ),
                                                                                                                                                child: Center(child: Text("Clear all",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                                                                                                              ),
                                                                                                                                              SizedBox(width: 10,),
                                                                                                                                              Container(
                                                                                                                                                height: 45,
                                                                                                                                                width: 140,
                                                                                                                                                decoration: BoxDecoration(
                                                                                                                                                  color: Colors.blue,
                                                                                                                                                    borderRadius: BorderRadius.circular(19),
                                                                                                                                                    border: Border.all(color: Colors.blue,width: 2)
                                                                                                                                                ),
                                                                                                                                                child: Padding(
                                                                                                                                                  padding: const EdgeInsets.all(5.0),
                                                                                                                                                  child: Row(
                                                                                                                                                    children: [
                                                                                                                                                      Text("See all Spaces",


                                                                                                                                                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                                                                                                                                                      Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15,)
                                                                                                                                                    ],
                                                                                                                                                  ),
                                                                                                                                                ),
                                                                                                                                              ),
                                                                                                                                            ],

                                                                                                                                          ),
                                                                                                                                        )
                                                                                                                                      
                                                                                                                                      
                                                                                                                                                                                                                                                                        ]),
                                                                                                                                    ),
                                                                                                                                  ) ,
                                                                                                                                    bottomNavigationBar: ClipRRect(
                                                                                                                                      borderRadius: BorderRadius.circular(19),
                                                                                                                                      child: BottomNavigationBar(

                                                                                                                                        selectedItemColor: Colors.blue,
                                                                                                                                        unselectedItemColor: Colors.black,
                                                                                                                                        showUnselectedLabels: true,
                                                                                                                                        items: const [

                                                                                                                                          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                                                                                                                                          BottomNavigationBarItem(icon: Icon(Icons.room_service), label: 'Services'),
                                                                                                                                          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
                                                                                                                                          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Saved'),
                                                                                                                                          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
                                                                                                                                        ],
                                                                                                                                      ),
                                                                                                                                    )
                                                                                                                                );

                                                                                                                              }
                                                                                                                            }
