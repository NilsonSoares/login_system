import 'dart:ui';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() { 
    super.initState();

    Future.delayed(Duration(seconds: 2), (){
      Navigator.pushReplacementNamed(context, "/login");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "NOTAS",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w800,
                color: Colors.deepPurple
              ),),
            Image.asset(
              "images/notes.png",
              fit: BoxFit.fitHeight,
            )
          ],
        ),
      ),
    );
  }
}