// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class messengerScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        //leading: ,
        titleSpacing: 20,
        title:Row(

          children:[
        CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage('https://e3arabi.com/wp-content/uploads/2021/04/flower-729512_1280.jpg'),
        ),
        SizedBox(
          width: 15,
        ),
        Text('Chats',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
        ),
          ]
      ),
        actions: [
          IconButton(onPressed: (){}, icon: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.blue,
            child: Icon(
                Icons.camera_alt,
            size: 15,
            color: Colors.white,),

          ),
          ),
          IconButton(onPressed: (){}, icon: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.blue,
            child: Icon(
                Icons.edit,
            size: 15,
            color:Colors.white ,),

          ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
               padding: const EdgeInsets.all(0.0),
               child: Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: Colors.grey[200],
                 ),
                 child: Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: Row(
                    children: [
                   Icon(
                     Icons.search,),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Search'),
                    ],
            ),
                 ),
               ),
             ),
            SizedBox(height: 20),
            Container(
              height: 50,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index)=>buildChatItem(),
                  separatorBuilder: (context,index)=>SizedBox(width: 20,),
              itemCount: 5,
              ),

            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(itemBuilder: (context,index)=>buildStoryItem(),
                  separatorBuilder: (context,index)=>SizedBox(
                    height: 20,
                  ),
                  itemCount: 15),
            )

          ],
        ),
      ),
    );
  }


  Widget buildChatItem()=> Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage('https://e3arabi.com/wp-content/uploads/2021/04/flower-729512_1280.jpg'),
          ),

          CircleAvatar(
            radius: 6,
            //backgroundImage: NetworkImage('https://e3arabi.com/wp-content/uploads/2021/04/flower-729512_1280.jpg'),

            backgroundColor: Colors.green,),
        ],),
      SizedBox(width: 20,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ghada fares mahmoud',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,),
            SizedBox(height: 5,),


          ],
        ),
      ),
    ],
  );

  Widget buildStoryItem()=>Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage('https://e3arabi.com/wp-content/uploads/2021/04/flower-729512_1280.jpg'),
          ),

          CircleAvatar(
            radius: 6,
            backgroundImage: NetworkImage('https://e3arabi.com/wp-content/uploads/2021/04/flower-729512_1280.jpg'),

            backgroundColor: Colors.green,),
        ],),
      SizedBox(width: 20,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ghada fares mahmoud',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,),
            SizedBox(height: 5,),
            Row(
              children: [
                Expanded(
                  child: Text('hello, how are you how are you what is',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,),
                ),
                Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle
                  ),
                ),
                Text('02:00am')
              ],
            ),

          ],
        ),
      ),
    ],
  );
}
