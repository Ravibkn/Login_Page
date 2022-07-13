import 'package:flutter/material.dart';

class AspectRatioExample extends StatelessWidget {
  const AspectRatioExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Woolha.com Flutter Tutorial'),
      ),

      body: Container(
        width: 200.0,
        height: 200.0,
        color: Colors.grey,
        alignment: Alignment.topCenter,
        child: AspectRatio(
          aspectRatio: 3 / 3,
          child: Container(
            color: Colors.teal,
          ),
        ),
      ),

      //      body: AspectRatio(

      //        aspectRatio: 1 / 2,

      //        child: Container(

      //          width: 100,

      //          height: 100,

      //          color: Colors.teal,

      //        ),

      //      ),

      //      body: Column(

      //        children: [

      //          Expanded(

      //            child: Align(

      //              child: AspectRatio(

      //                aspectRatio: 2 / 1,

      //                child: Container(

      //                  width: 100,

      //                  height: 100,

      //                  color: Colors.teal,

      //                ),

      //              ),

      //            ),

      //          )

      //        ],

      //      ),
    );
  }
}
