import 'package:flutter/material.dart';
import 'package:learn/Pages/SecondPage.dart';
import 'package:learn/Pages/TextPage.dart';
import 'package:learn/Pages/floating.dart';
import 'package:learn/carrent.dart';
import 'package:learn/profilepage.dart';
import 'package:learn/snapchatpage.dart';
import 'package:learn/task/clg.dart';

import 'Pages/Doctors.dart';
import 'Pages/JohnProfile.dart';
import 'Frontend/construction.dart';
import 'Pages/johndetail.dart';
import 'Pages/menu.dart';
import 'Pages/CompletedPage.dart';
import 'Pages/HomePage.dart';
import 'Pages/Stack.dart';
import 'Pages/ThirdPage.dart';
import 'Pages/active.dart';
import 'Pages/callingpage.dart';
import 'Pages/calllog.dart';
import 'Pages/car.dart';
import 'Pages/call.dart';
import 'Pages/FoodPage.dart';
import 'Pages/Cancelled.dart';
import 'Pages/lottie.dart';
import 'Pages/settingspage.dart';
import 'Pages/snapchat.dart';

void main() {
  runApp(const WhatsAppUI());
}

class WhatsAppUI extends StatelessWidget {
  const WhatsAppUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: construction(),
    );
  }
}


