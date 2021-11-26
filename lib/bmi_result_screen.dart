// ignore_for_file: dead_code

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bmi_result_screen extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;
   Bmi_result_screen({
   required this.result,
   required this.isMale ,
   required this.age,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title:Text('BMI Reslt',
        style: TextStyle(fontSize: 25,
        fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(70.0),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
              color: Colors.pinkAccent),
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text('Gender:${!isMale ? 'female': 'male'}',
                  style: TextStyle(fontSize: 30,
                  fontWeight: FontWeight.bold),),
                  Text('reslt=$result',
                    style: TextStyle(fontSize: 30,
                        fontWeight: FontWeight.bold),),
                  Text('Age:$age',
                    style: TextStyle(fontSize: 30,
                        fontWeight: FontWeight.bold),),
                ],

              ),
            ),
        ),
      ),
      );

  }
}
