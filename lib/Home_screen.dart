// ignore: file_names
// ignore: file_names


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
@override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.amber,
       leading: Icon(Icons.menu ,),
       title: Text('firstApp',),

       actions: [ IconButton(onPressed: (){
        print('hello ghada');
       },
         icon: Icon(Icons.notification_important,),),
         Icon(Icons.search ,) ,
       ],
     ),
    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(50),
              ),

            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Stack(
            alignment: Alignment.bottomCenter ,
              children: [
                Image(
                    image: NetworkImage('https://e3arabi.com/wp-content/uploads/2021/04/flower-729512_1280.jpg',),
                  height: 200,
                  width: 200,
                  fit:BoxFit.cover,
                ),
                Container(
                 padding: EdgeInsets.symmetric(
                   vertical: 10,
                 ),
                  width: 200,
                  color: Colors.amber.withOpacity(0.4),
                  child: Text('flower',
                  style: TextStyle(fontSize: 20,
                  color: Colors.white,
                  ),
                    textAlign: TextAlign.center ,

                  ),

                )
              ],
            ),
          ),
        ),
      ],
    ),

    );
  }
}