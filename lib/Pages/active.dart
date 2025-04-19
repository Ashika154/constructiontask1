import 'package:flutter/material.dart';
List<String>picture=["assets/jamaca la salad.jpg","assets/nabati.jpg","assets/salad.jpg","assets/sandwich.jpg","assets/jamaca la salad.jpg","assets/nabati.jpg","assets/salad.jpg","assets/sandwich.jpg","assets/jamaca la salad.jpg","assets/nabati.jpg","assets/salad.jpg","assets/sandwich.jpg",];
List<String>food=["Bite Me Sandwiches ","Life of Salad","Toro Toro Nabati","Jamaca La Salad","Bite Me Sandwiches ","Life of Salad","Toro Toro Nabati","Jamaca La Salad","Bite Me Sandwiches ","Life of Salad","Toro Toro Nabati","Jamaca La Salad"];
List<String>items=["3 items | 1.4km","4 items | 2.5km","2 items | 2.2km","3 items | 1.7km","5 items | 1.4km","9 items | 1.4km","4 items | 1.4km","2 items | 1.4km","1 items | 1.4km","6 items | 1.4km"];
class active extends StatelessWidget {
  const active({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

          child: ListView.builder(itemCount:10,itemBuilder: (context,index){

        return
             Padding(
                    padding: const EdgeInsets.all(8.0),
                 child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
                   child:  Container(
                height: 150,
                width: 370,
                color: Colors.black12,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(19),
                        child: Container(
                          height: 120,
                          width: 120,
                            decoration: BoxDecoration(
                            color: Colors.black12,
                            image: DecorationImage(image: AssetImage(picture[index]),fit: BoxFit.cover)
                          )
                        ),

                      ),
                    ),
                    Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start ,
                      children: [
                        SizedBox(height: 25,),
                        Text(food[index],style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text(items[index],style: TextStyle(
                          color: Colors.black
                        ),),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text("\$32.00",style: TextStyle(color: Colors.green),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 20,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.red),
                                ),
                                child: Center(
                                  child: Text("cancelled",style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.red
                                  ),),
                                ),
                              ),

                            )
                          ],
                        )

                      ],
                            ),

                  ],
                ),

                ),



                     ),


                );

  }

  ),



            ),
          );



  }
}
