import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class loginScreen extends StatelessWidget {
 var emailControler=TextEditingController();
 var passwordControler=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(

        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('login',

              style: TextStyle(
                fontSize: 30,
                color: Colors.cyan,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(
                height: 20,
              ),

              TextFormField(
                controller:emailControler ,

                keyboardType:TextInputType.emailAddress ,
              onFieldSubmitted: (value){
                  print(value);
              },
              decoration:InputDecoration(
                labelText: 'Email Address',
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.email,
                )

              ) ,
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: passwordControler,
                keyboardType:TextInputType.visiblePassword ,
                obscureText: true,
                onFieldSubmitted: (value){
                  print(value);
                },
                decoration:InputDecoration(
                    labelText: 'password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                  )


                ) ,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.cyan,
                width: double.infinity,
                child: MaterialButton(
                onPressed: (){
                  print(emailControler.text);
                  print(passwordControler.text);
                },
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),

                ),
              ),
              Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                children: <Widget>[

                  Text('Don\'t have an account' ),
                  TextButton(onPressed: (){},
                      child: Text('Register Now'))
                ],
              ),
            ],
          ),
        ),
      ),
    );


  }
}
