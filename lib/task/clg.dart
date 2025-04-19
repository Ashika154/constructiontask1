import 'package:flutter/material.dart';
class clg extends StatelessWidget {
  const clg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(child: Column(
          children: [
           Container(
             height: 50,
              color: Colors.black12,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("hii,david"),
                  ),
                  Icon(Icons.waving_hand,color: Colors.yellow,),
                  SizedBox(width: 350,),
                  CircleAvatar(
                    radius:15 ,
                    backgroundImage: AssetImage("assets/jennifer.jpg"),
                  )
                ],
                
              ),
             
           ),
           ListTile(
             leading: Text("Explore the world"),
           ),
            TextField(
             decoration: InputDecoration(
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(19)
               ),
               suffixIcon: Icon(Icons.search),
               labelText: "Search places"
             ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  children: [
                    Text("Popular places",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 320,),
                    Text("view all")
                  ],
                ),
              ),
            ),
            
         Row(
           children: [
             Container(
               height: 50,
               width: 90,
               decoration: BoxDecoration(
                   color: Colors.black,
                 borderRadius: BorderRadius.circular(19)
               ),
        
               child: Center(child: Text("Most viewed",style: TextStyle(color: Colors.white),)),
        
             ),
             SizedBox(width: 80,),
             Container(
               height: 50,
               width: 90,
               decoration: BoxDecoration(
                   color: Colors.black12,
                   borderRadius: BorderRadius.circular(19)
               ),
        
               child: Center(child: Text("Nearby")),
        
             ),
             SizedBox(width: 80,),
             Container(
               height: 50,
               width: 90,
               decoration: BoxDecoration(
                   color: Colors.black12,
                   borderRadius: BorderRadius.circular(19)
               ),
        
               child: Center(child: Text("Latest")),
        
             ),
           ],
         ) ,
            SizedBox(height: 20,),
        
            Row(
              children: [
                Container(
        
                  height: 300,
                  width: 220,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/sun.jpg"),fit: BoxFit.cover),
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(19),

                  ),
                  child: Stack(
                    children: [Positioned(
                        top: 15,
                        right: 10,child: CircleAvatar(radius: 20,
                    child: Icon(Icons.favorite_border,color: Colors.black,),))],
                  ),
        
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 300,
                    width: 220,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/sun.jpg"),fit: BoxFit.cover),
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: Stack(
                      children: [Positioned(
                          top: 15,
                          right: 10,child: CircleAvatar(radius: 20,
                        child: Icon(Icons.favorite_border,color: Colors.black,),
                      ),

                      ),


                      ],
                    ),

        
                    ),
        
                  ),
        
              ],
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.black12,
              child: Row(
                children: [
                  Icon(Icons.home,color: Colors.black,),
                  SizedBox(width: 100,),
                  Icon(Icons.lock_clock,color: Colors.black,),
                  SizedBox(width: 100,),
                  Icon(Icons.favorite_border,color: Colors.black,),
                  SizedBox(width: 100,),
                  Icon(Icons.person,color: Colors.black,),
        
                ],
              ),
            )
          ])),
      ),
    );
  }
}
