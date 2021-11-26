import 'package:flutter/material.dart';
import 'package:flutter_app/bmi_result_screen.dart';
import 'package:flutter_app/bmi_screen.dart';
import 'package:flutter_app/Home_screen.dart';
import 'package:flutter_app/counter_screen.dart';
import 'package:flutter_app/messengerScreen.dart';
import 'package:flutter_app/userScreen.dart';

import 'loginScreen.dart';
//import 'package:device_preview/device_preview.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: BmiScreen(),
      debugShowCheckedModeBanner: false,
    );
  }}
