import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';
class Lottie extends StatelessWidget {
  const Lottie({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(child: Column(
        children: [
          Container(
            height: 500,
            width: double.infinity,
            child: Center(child: ElevatedButton(onPressed: ()
                {
                  Dialog(context);


                }, child: Text("Click here"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey
            ),)),
            ),
          Center(
            child: ElevatedButton(onPressed: ()

                {
                  Fluttertoast.showToast(
                      msg: "Successful",
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.TOP_LEFT
                  );
                }, child: Text("Click me",)),
          )
        ],
      )),
    );
  }
}
void Dialog(BuildContext context)
{
  // Future.delayed(Duration(seconds: 5));
  showDialog(
      context: context,
      builder: (context)

  {
    Timer(Duration(seconds: 2),()
    {
    Navigator.pop(context);
    });

    return AlertDialog(
      scrollable: true,
      icon: const Icon(Icons.warning,color: Colors.red,),
      title: const Text("Warning pop up"),
      content: const ListBody(
        children: [
          Text("try again")
          ],),

        );
  });

}
