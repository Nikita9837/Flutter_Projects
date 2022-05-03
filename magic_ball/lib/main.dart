import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue,
        ),
        body: MagicBall(),
      ),
    ),

  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int changeImage = 1;

  void changeImages() {
    changeImage = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(

               children:[Expanded

                 (child: TextButton
                 ( onPressed: (){
                   setState(() {
                     changeImages();
                   });

               },
                   child: Image.asset('images/ball$changeImage.png'))),]



    )
    ,
    );
  }
}

