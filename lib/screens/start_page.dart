import 'dart:async';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.restorablePushReplacementNamed(context, 'sign');
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          // height: 60.0,
          // width: 120.0,
          child: Center(
            child: Image.asset('assets/images/start.png',width: 200.0,height: 200.0,),
            // child: Image.asset('assets/images/img1.png',width: 100.0,height: 100.0,),
          ),
        ),
      ),
    );
  }
}
