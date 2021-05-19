import 'dart:math';

import 'package:flutter/material.dart';


class AnimatedContainerPage extends StatefulWidget {

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  @override
  Widget build(BuildContext context) {

    final rnd = new Random();
    final r = rnd.nextInt(256);
    final g = rnd.nextInt(256);
    final b = rnd.nextInt(256);
    final r2 = rnd.nextInt(256);
    final g2 = rnd.nextInt(256);
    final b2 = rnd.nextInt(256);

    final width = rnd.nextInt(200) + 30;
    final height = rnd.nextInt(200) + 30;
    final radius = rnd.nextInt(100);

    final borde = Border.all( width: (rnd.nextInt(20) + 2).toDouble(), color: Color.fromRGBO(r2, g2, b2, 1.0) );

    return Scaffold(

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.account_circle),

        onPressed: (){
          setState(() {
            
          });
        }
      ),

      body: Center(
        child: AnimatedContainer( 
          duration: Duration( milliseconds: 1000 ),
          curve: Curves.easeInQuart,

          width: width.toDouble(),
          height: height.toDouble(),
          decoration: BoxDecoration(
            color: Color.fromRGBO(r, g, b, 1.0),
            borderRadius: BorderRadius.circular(radius.toDouble()),
            border: borde
          ),
        )
     ),
   );
  }
}