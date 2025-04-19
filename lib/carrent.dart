import 'package:flutter/material.dart';
class carrent extends StatelessWidget {
  const carrent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

          crossAxisCount: 4,
      childAspectRatio: 0.80,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10),
          itemCount: 12,
          itemBuilder: (context,index){
        return Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
           color: Colors.grey,
               borderRadius: BorderRadius.circular(35),
          ),
          child: Stack(
            children: [
          ClipRRect(
          borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
            child: Column(
              children: [
                Image.asset("car.jpg",),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Maruti Suzuki Ertiga",),
                    ),
                   ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("4.9"),
                  ),
                  Icon(Icons.star,color: Colors.yellow,)],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.chair_alt_outlined,),
                    ),
                  Text("7"),
                  Spacer(),
                  Icon(Icons.currency_rupee),
                  Text("2100/day")],
                ),
              ],
            ),
          ),
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
        );
      })),
    );
  }
}
