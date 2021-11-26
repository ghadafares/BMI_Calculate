import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/bmi_result_screen.dart';

class BmiScreen extends StatefulWidget {


  @override
  _State createState() => _State();
}

class _State extends State<BmiScreen> {
  bool isMale=true;
  double height=120;
  int weight=40;
  int age=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.pink[300],
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=true;
                        });
                      },
                      child: Container(

                      child: Column(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage('assets/images/male.jpg'),
                               height: 90,
                               width: 90,),
                          SizedBox(height: 15,),
                          Text('MALE',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),)
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: isMale ? Colors.pink[100]:Colors.grey[300]
                      ),
                ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           Image(image: AssetImage('assets/images/female.png'),
                             height: 90,
                             width:90,
                            ),
                            SizedBox(height: 15,),
                            Text('FEMALE',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),)
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color:  !isMale ? Colors.pink[100]:Colors.grey[300]
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
                 child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(

          decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(15),
         color:Colors.grey[300]
          ),

          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                     children:[
                     Text('HEIGHT',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:25,),
                  ),
                     SizedBox(height: 5,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.end,
                       children:[

                       Text('${height.round()}',
                       style: TextStyle(
                         fontWeight: FontWeight.w900,
                         fontSize:30,
                       ),),
                         Text('cm',
                           style: TextStyle(
                             fontSize:20,
                           ),),

    ]),
        Slider(value: height,
         max: 300,
            min: 80,

          onChanged: (value)
        {
         setState(() {
           height=value;
         });

      },
        )
                    ]
        ),
                ),
            ),
             ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[300]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Weight',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize:25,),
                        ),
                        Text('$weight',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize:30,
                          ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            FloatingActionButton(onPressed: (){
                              setState(() {
                                weight--;
                              });

                            },
                              child:
                              Icon(Icons.remove),
                              mini: true,
                              backgroundColor: Colors.pink[300],
                            ),
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                weight++;
                              });

                            },
                              child:
                              Icon(Icons.add),
                              mini: true,
                              backgroundColor: Colors.pink[300],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[300]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Age',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize:25,),
                        ),
                        Text('$age',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize:30,
                          ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                age--;
                              });
                            },
                              child: Icon(Icons.remove,
                              ),
                              backgroundColor: Colors.pink[300],
                              mini: true,
                            ),
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                age++;
                              });
                            },
                              child:
                              Icon(Icons.add),
                              mini: true,
                              backgroundColor: Colors.pink[300],
                            )],)],),),),],
    ),
            )

            ),
          Container(
            color: Colors.pink[300],
            width: double.infinity,
            child: MaterialButton(onPressed: (){
              double result=weight/pow(height/100,2);
              print(result.round());
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=> Bmi_result_screen(
                age: age,
                result: result.round(),
                isMale: isMale,
              ),
              ),);
            },
            child: Text('CALCULATE',

            style: TextStyle(
               fontSize: 25,
              fontWeight: FontWeight.bold,

            ),),),
          )

        ],
      ),
    );
  }
}
