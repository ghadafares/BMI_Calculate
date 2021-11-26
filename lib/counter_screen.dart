import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class counterScreen extends StatefulWidget {
  @override
  State<counterScreen> createState() => _counterScreenState();
}

class _counterScreenState extends State<counterScreen> {
  int countener=1;
@override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('counter'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(onPressed: (){
                setState(() {
                  countener--;
                });

              },
              child: Text('Minus',
              ),
              color: Colors.green,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('${countener}',
                  style: TextStyle(fontWeight: FontWeight.w900,
                  fontSize: 50),
                ),
              ),
              MaterialButton(onPressed: (
                  ){
                setState(() {
                  countener++;
                });

              },
                child: Text('Blus',
                ),
                color: Colors.green,),
            ],
          ),
        ),
      ),
    );
  }
}
