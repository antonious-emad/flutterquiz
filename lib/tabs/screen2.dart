import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  Screen2({Key? key}) : super(key: key);

  static const String routeName = "Screen2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/mohamed.jpg"),
            )
          ],
        ),
      ),
      body: Container(
        color: Colors.pink,
        width: 100,
        height: 100,
        child: Center(

          child: Text(
            "Hello from SecondScreen!",
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
