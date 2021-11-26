import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class UserModel{
 final int id;
 final String name;
 final String phone;
 UserModel({
   required this.id,
   required this.name,
   required this.phone,
 });
}
class userScreen extends StatelessWidget {
  List<UserModel>users=[
    UserModel(id: 1,
        name: 'Ghada fares',
        phone: '0111557666'),
    UserModel(id: 2,
        name: 'rana abdallah',
        phone: '0111557666'),
    UserModel(id: 3,
        name: ' fares mahmoud',
        phone: '0111557666'),
    UserModel(id: 4,
        name: ' fares soliman',
        phone: '0111557666'),
    UserModel(id: 1,
        name: 'Ghada fares',
        phone: '0111557666'),
    UserModel(id: 2,
        name: 'rana abdallah',
        phone: '0111557666'),
    UserModel(id: 3,
        name: ' fares mahmoud',
        phone: '0111557666'),
    UserModel(id: 4,
        name: ' fares soliman',
        phone: '0111557666'),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('User'),
      ),
      body:
        ListView.separated(itemBuilder:(context,index)=> buildUserItem(users[index]),
            separatorBuilder:(context,index)=>Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
    ),
            itemCount: users.length)
    );
  }
  Widget buildUserItem(UserModel users)=>Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 20,
          child: Text('${users.id}',
            style: TextStyle(
              fontSize: 25,
            ),),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${users.name}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('${users.phone}',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            )
          ],

        ),
      ],
    ),

  );
}
