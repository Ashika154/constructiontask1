import 'package:flutter/material.dart';
List<String>menupic=["assets/gardenica salad.jpg","assets/jamaca la salad.jpg","assets/nabati.jpg","assets/noodles.jpg","assets/salad.jpg","assets/gardenica salad.jpg","assets/jamaca la salad.jpg","assets/nabati.jpg","assets/noodles.jpg","assets/salad.jpg",];
List<String>menuname=["Mixed Vegetable Salad","Fruit & Spice Salad","jamaca la Salad","gardenica Salad","nabati","Mixed Vegetable Salad","Fruit & Spice Salad","jamaca la Salad","gardenica Salad","nabati",];
List<String>juicepic=["assets/avacadojuice.jpg","assets/mangojuice.jpg","assets/orangejuice.jpeg","assets/avacadojuice.jpg","assets/mangojuice.jpg","assets/orangejuice.jpeg","assets/avacadojuice.jpg","assets/mangojuice.jpg","assets/orangejuice.jpeg"];
List<String>juicename=["Fresh Avacado juice","Fresh mango juice","Fresh orange juice","Fresh Avacado juice","Fresh mango juice","Fresh orange juice","Fresh Avacado juice","Fresh mango juice","Fresh orange juice"];
class menu extends StatelessWidget {
  const menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        
        child: SingleChildScrollView(
          child: Column(
          children: [
            Stack(children: [
              Image.asset("assets/sandwich.jpg"),
              Positioned(
                  top: 20,
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back,color: Colors.white,),
                       SizedBox(width: 270,),
                       Icon(Icons.favorite_border,color: Colors.white,),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Icon(Icons.send,color: Colors.white,),
                       ),
                    ],
                  ),
              )
            ],
            ),
            Container(
              height: 70,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Big Gargen Salad",
                    style: TextStyle(
                      fontSize: 25,fontWeight: FontWeight.bold
                    ),),
                    SizedBox(width: 70,),
                    Icon(Icons.arrow_forward_ios_sharp)
                  ],
          
                ),
              ),
              
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.star,color: Colors.yellow,),
                  ),
                  Text("4.8 ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),),
                  Text("|4.8k reviews|"),
                  SizedBox(width: 130,),
                  Icon(Icons.arrow_forward_ios_sharp)
          
                ],
              )
            ),
            Container(
                height: 80,
                width: double.infinity,
          
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.location_on,color: Colors.green,),
                    ),
                    Row(
          
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15,),
                            Text("2.4km ",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),),
          
                            Row(
                              children: [
                                Text("Delivery Now |"),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.electric_scooter,color: Colors.green,),
                                ),
                                Text("\$200")
                              ],
                            ),],
                        ),
                        SizedBox(width: 80,),
                        Icon(Icons.arrow_forward_ios_sharp),
                      ],
                    ),
          
          
                  ],
                )
            ),
            Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.verified,color: Colors.green,),
                    ),
                    Text("Offers are Available ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
          
                    ),),
                    SizedBox(width: 95,),
                    Icon(Icons.arrow_forward_ios_sharp)
                  ],
                ),),
            Container(
              alignment: AlignmentDirectional.topStart,
              height: 40,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("For You",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
          
                ),),
              ),),

SizedBox(height: 270,
  child: ListView.builder(
      scrollDirection:Axis.horizontal,
      itemCount:10,itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius:  BorderRadius.circular(19),
                      child: Container(
                        height: 255,
                        width: 150,
                        color: Colors.black12,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(19),
                                child: Container(
                                  height: 130,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage(menupic[index]),fit: BoxFit.cover)
                                  ),
                                ),
                              ),
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(menuname[index], style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("\$12.00",style: TextStyle(color: Colors.green,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),),
                                )
                              ],

                            ),

                          ],
                        ),
                      ),

                    ),
                  );




  }),

),
            Container(
              alignment: AlignmentDirectional.topStart,
              height: 40,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Menu",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold

                ),),
              ),),



            SizedBox(height: 810,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                  scrollDirection:Axis.vertical,
                  itemCount:10,itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius:  BorderRadius.circular(19),
                    child: Container(
                      height: 120,
                      width: 150,
                      color: Colors.black12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(19),
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage(menupic[index]),fit: BoxFit.cover)
                                ),
                              ),
                            ),
                          ),


                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20,),
                                Text(menuname[index], style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),),
                                SizedBox(height:10,),
                                Text("\$12.00",style: TextStyle(color: Colors.green,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),),
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
            Container(
              alignment: AlignmentDirectional.topStart,
              height: 40,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Drink",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold

                ),),
              ),),



            SizedBox(height: 810,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection:Axis.vertical,
                  itemCount:10,itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius:  BorderRadius.circular(19),
                    child: Container(
                      height: 120,
                      width: 150,
                      color: Colors.black12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(19),
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage(juicepic[index]),fit: BoxFit.cover)
                                ),
                              ),
                            ),
                          ),


                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20,),
                                Text(juicename[index], style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),),
                                SizedBox(height:10,),
                                Text("\$12.00",style: TextStyle(color: Colors.green,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),),
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
          ],

              
              
                ),
        ),
        
      ),
    );
  }
}
