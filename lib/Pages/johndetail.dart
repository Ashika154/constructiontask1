import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
List<String>docname=["Dr.Olivia Tuener,M.D","Dr.Alexander Bennett,Ph.D.","Dr.Sophia Martinez,Ph.D.","Dr.Michael Davidson,M.D"];
List<String>docrole=["Dermato-Endocrinology","Dermato-Genetics","Cosmetic BioEngineering","Nano-Dermatology"];
class johndetails extends StatelessWidget {
  const johndetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: SafeArea(child: SingleChildScrollView(
      child: Column(
        children: [Container(
          height: 70,
          width: double.infinity,
          color: Colors.black12,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 25,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
      
                  SizedBox(height: 16,),
                  Text("Hi WelcomeBack"),
                  Text("John Doe")
                ],
              ),
              SizedBox(width: 90,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 15,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.notification_add_outlined)),
              ),
              CircleAvatar(
                radius: 15,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.settings),
              )
            ],
          ),
        ),
          SizedBox(width: 70,),
          Container(
            height: 90,
            width: double.infinity,
            color: Colors.black12,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                  // color: Colors.white,
                    height: 60,
                    width: 60,
                    child: Column(
                      children: [
                        Icon(Icons.favorite),
                        Text("Doctors"),
                      ],
                    ),
      
      
      
                  ),
                ),
      
      
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //color: Colors.white,
                    height: 60,
                    width: 60,
      
                    child: Column(
                      children: [
                        Icon(Icons.favorite),
                        Text("favorite")
                      ],
                    ),
      
                  ),
                ),
                SizedBox(width: 3,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 50,
                    width: 200,
                    color: Colors.blue.shade200,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 17,
                            child: Icon(Icons.menu),
      
                          ),
                        ),
                        SizedBox(width: 110,),
                        Icon(Icons.search),
                      ],
                    ),
      
                  ),
                )
              ],
            )
          ),
          Container(
            height: 250,
            width: double.infinity,
            color: Colors.blue.shade100,
            child: Stack(
              children: [
              Positioned(
              left: 15,
              top: 20,
              child: Row(
      
                children: [
                  Container(
                    height: 70,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(19)),
                    child: Column(
                      children: [
                        Text("9",style: TextStyle(fontSize: 25,
                        fontWeight: FontWeight.bold),),
                        Text("MON",style: TextStyle(fontSize: 10,
                            ),)
                      ],
                    ),
      
                  ),
                  SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(19)),
                      child: Column(
                        children: [
                          Text("10",style: TextStyle(fontSize: 23,
                              fontWeight: FontWeight.bold),),
                          Text("TUE",style: TextStyle(fontSize: 10,
                          ),)
                        ],
                      ),
      
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(19)),
                      child: Column(
                        children: [
                          Text("11",style: TextStyle(fontSize: 23,
                              fontWeight: FontWeight.bold,),),
                          Text("WED",style: TextStyle(fontSize: 10,
                          ),)
                        ],
                      ),
      
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(19)),
                      child: Column(
                        children: [
                          Text("12",style: TextStyle(fontSize: 23,
                              fontWeight: FontWeight.bold),),
                          Text("THU",style: TextStyle(fontSize: 10,
                          ),)
                        ],
                      ),
      
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(19)),
                      child: Column(
                        children: [
                          Text("13",style: TextStyle(fontSize: 23,
                              fontWeight: FontWeight.bold),),
                          Text("FRI",style: TextStyle(fontSize: 10,
                          ),)
                        ],
                      ),
      
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(19)),
                      child: Column(
                        children: [
                          Text("14",style: TextStyle(fontSize: 23,
                              fontWeight: FontWeight.bold),),
                          Text("SAT",style: TextStyle(fontSize: 10,
                          ),)
                        ],
                      ),
      
                    ),
                  ),
                ],
              ),
            ),
                Stack(
                    children: [
                      Positioned(
                        left: 15,
                        bottom: 20,
      
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(19),
                    child: Stack(
                      children:[ Container(
                        height: 125,
                        width: 330,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text("9 AM",style: TextStyle(color: Colors.indigo),
                                        ),
                                        DottedLine(
                                          dashColor: Colors.blue,
                                          dashLength: 2.0,
                                          lineLength: 230,
                                        ),

                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Text("10 AM",style: TextStyle(color: Colors.indigo,),),

                                    SizedBox(height: 5,),
                                    Text("11 AM",style: TextStyle(color: Colors.indigo),),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Text("12 AM",style: TextStyle(color: Colors.indigo),
                                        ),
                                        DottedLine(
                                          dashColor: Colors.blue,
                                          dashLength: 2.0,
                                          lineLength: 230,
                                        ),
                                      ],
                                    ),



                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),


                      ),
                        Positioned(
                          top: 30,
                            left: 80,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(height: 65,
                                width: 210,
                                color: Colors.blue.shade100,
                                child: Column(

                                  children: [
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 9.0),
                                          child: Text("Dr.Olivia Turner,M.D.",style: TextStyle(color: Colors.blue),
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        CircleAvatar(
                                          radius: 8,
                                          child: Icon(Icons.check,size: 16,),
                                        ),
                                        SizedBox(width: 3,),
                                        CircleAvatar(
                                          radius: 8,
                                          child: Icon(Icons.close,size: 16,),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 9.0),
                                      child: Text("Treatment and prevention of skin and photodermatis",style: TextStyle(fontSize: 11),),
                                    )
                                  ],
                                ),
                              ),
                            ))
                    ]),
                  ),
                )

          ]
            )
      
          ])
      
          ),
          SizedBox(height: 15,),
          SizedBox(height: 430,
          child:
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
              itemCount:4,
              itemBuilder: (context,index){
              return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(19),
                  child: Container(
                    height: 90,
                    width: 300,
                    color: Colors.blue.shade200,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(radius: 30,),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15,),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                height: 45,
                                width: 215,
                                color: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                              
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Text(docname[index],style: TextStyle(
                                      fontWeight: FontWeight.bold,color: Colors.blue),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Text(docrole[index],style: TextStyle(fontSize: 10,
                                          fontWeight: FontWeight.bold,color: Colors.black),),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 3,),
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(19),
                                  child: Container(
                                    height: 20,
                                    width: 50,
                                    color: Colors.white,
                                    child: Row(
                                      children: [
                                        Icon(Icons.star,color: Colors.blue,size: 20,),
                                        Text("5")
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(19),
                                  child: Container(
                                    height: 20,
                                    width: 50,
                                    color: Colors.white,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 3.0),
                                          child: Icon(Icons.chat,color: Colors.blue,size: 15,),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 4.0),
                                          child: Text("60",style: TextStyle(fontSize: 13),),
                                        ),
                              
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 50,),
                                CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.question_mark_outlined,size: 17),
                                ),
                                SizedBox(width: 5,),
                                CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.favorite,size: 17,),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );})

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
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
            ),
          )
        ],),
    )),);
  }
}
