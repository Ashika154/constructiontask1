import 'package:flutter/material.dart';
class StackExample extends StatefulWidget {
  const StackExample({super.key});

  @override
  State<StackExample> createState() => _StackState();
}

class _StackState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(
          child:Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.grey,
                child: Center(
                  child: Stack(
                    // alignment: Alignment.topRight,
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: 20,
                        top: 20,
                        child: Container(
                          height: 200,
                          width: 200,
                          color: Colors.green,
                        ),
                      ),
                      Positioned(
                        left: 20,
                        bottom: 20,
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )




          ));

  }
}
