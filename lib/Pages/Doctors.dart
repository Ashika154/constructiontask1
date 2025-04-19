import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
List<String>docpic=["assets/doctor1.jpg","assets/doctor2.jpg","assets/doctor3.jpg","assets/doctor4.jpg","assets/doctor1.jpg","assets/doctor2.jpg","assets/doctor3.jpg","assets/doctor4.jpg"];
class Doctors extends StatelessWidget {
  const Doctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
                Container(
          height: 40,
          width: double.infinity,
         // color: Colors.grey,
          child: Row(
            children: [
              Icon(Icons.arrow_back_ios_new),
              SizedBox(width: 100,),
              Text("Doctors",style: TextStyle(fontSize:20,fontWeight:FontWeight.bold,color: Colors.indigo),),
              SizedBox(width: 50,),
              CircleAvatar(
                radius: 15,
                child: Icon(Icons.search_sharp,color: Colors.indigo,),

              ),
              SizedBox(width: 5,),
              CircleAvatar(
                radius: 15,
                child: Icon(Icons.library_add,size:20,color: Colors.indigo),
              ),
            ],
          ),
                ),
                Container(
          height: 50,
          width: double.infinity,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Sort By"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(19),
                  child: Container(
                    height: 20,width: 40,color: Colors.indigo,
                    child: Center(
                        child: Text("A-Z",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                ),
              ),
              SizedBox(width: 5,),
              CircleAvatar(radius: 11,
                child: Icon(Icons.star_border_outlined,size: 15,
                  color: Colors.indigo,),
              ),
              SizedBox(width: 5,),
              CircleAvatar(radius: 11,
                child: Icon(Icons.favorite_border,size: 15,
                  color: Colors.indigo,),),
              SizedBox(width: 5,),
              CircleAvatar(radius: 11,
                child: Icon(Icons.male,size: 15,
                  color: Colors.indigo,),),
              SizedBox(width: 5,),
              CircleAvatar(radius: 11,
                child: Icon(Icons.female,size: 15,
                  color: Colors.indigo,),),
            ],
          ),
                ),
               ListView.builder(
                 shrinkWrap: true,
                 physics: NeverScrollableScrollPhysics(),
                 itemCount: 7,
           itemBuilder: (context,index){
               return Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: ClipRRect(
                   borderRadius: BorderRadius.circular(18),
                   child: Container(
                     height: 130,
                     width: 320,
                     color: Colors.indigo.shade100,
                     child: Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(

                             child: CircleAvatar(
                               radius: 55,
                               backgroundImage: AssetImage(docpic[index],),


                             ),
                           ),
                         ),

                         Padding(
                           padding: const EdgeInsets.only(top: 30.0),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Dr.Alexander Bennett,Ph.D.",
                                 style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.indigo),),
                               Text("Dermato-Genetics"),
                               Padding(
                                 padding: const EdgeInsets.only(top: 10.0),
                                 child: Row(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.only(right: 9.0),
                                       child: ClipRRect(
                                         borderRadius: BorderRadius.circular(19),
                                         child: Container(
                                           height: 20,
                                           width: 40,
                                           color: Colors.indigo,
                                           child:  Center(
                                               child: Text("info",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),)),
                                         ),
                                       ),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(right: 4.0),
                                       child: CircleAvatar(radius: 11,backgroundColor: Colors.white,child: Icon(Icons.list,color: Colors.indigo,size: 17,),),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(right: 4.0),
                                       child: CircleAvatar(radius: 11,backgroundColor: Colors.white,child: Icon(CupertinoIcons.exclamationmark,color: Colors.indigo,size: 17,),),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(right: 4.0),
                                       child: CircleAvatar(radius: 11,backgroundColor: Colors.white,child: Icon(Icons.question_mark_outlined,color: Colors.indigo,size: 17),),
                                     ),
                                     CircleAvatar(radius: 11,backgroundColor: Colors.white,child: Icon(Icons.favorite_border,color: Colors.indigo,size: 17),),
                                   ],
                                 ),
                               ),],
                           ),
                         )
                       ],
                     ),

                   ),
                 ),
               );
               })],),
        )),
    );
  }
}
