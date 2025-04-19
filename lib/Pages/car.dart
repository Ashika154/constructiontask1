import 'package:flutter/material.dart';
class car extends StatelessWidget {
  const car({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(

        height: 350,
        width: 270,
        decoration: BoxDecoration(

          color: Colors.grey,
          borderRadius: BorderRadius.circular(35),


        ),
          child: Column(
            children: [
            Positioned(
                left: 0,
                right: 0,
              top: 0,
                bottom: 120,
                child: Container(
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(35),
                    topLeft: Radius.circular(35)),
                    image: DecorationImage(image: AssetImage("assets/car.jpg",),fit: BoxFit.cover)
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                      top: 15,
                        right: 10,
                        child: CircleAvatar(
                          radius: 20,
                          child: Icon(Icons.favorite_border),

                        ),
                    ),
                    ],

                  ),
                  

                ),


            ),

         Positioned(
           bottom: 0,
           child: ClipRRect(
             borderRadius: BorderRadius.circular(35),
             child: Container(
               height: 120,
               width: 270,
               
               color: Colors.grey,
               child: Padding(

                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Maruti Suzuki Ertiga"),
                     SizedBox(height: 8,),
                     Row(
                       children: [
                         Text("4.9",),
                         Icon(Icons.star,

                           color: Colors.yellow,)
                       ],
                     ),
                      SizedBox(height: 8,),
                    Row(
                      children: [
                        Icon(Icons.chair_alt_outlined),
                        Text("7"),
                        Spacer(),
                        Icon(Icons.currency_rupee),
                        Text("2100/day")


                ],
                    )
                   ],
                 ),
               ),
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