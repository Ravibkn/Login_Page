import 'package:flutter/material.dart';

class MyContenaier extends StatelessWidget {
  const MyContenaier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * .5,
        color: Colors.red,
      ),
    );
  }
}
