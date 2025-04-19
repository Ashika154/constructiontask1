import 'package:flutter/material.dart';

import 'HomePage.dart';
class Floating extends StatelessWidget {
  const Floating({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: ()
            {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: ()
      {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
      },
          icon:Icon(Icons.share),
          foregroundColor: Colors.red,
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
          ),label: Text("Share")

      ),
      
    );
  }
}
