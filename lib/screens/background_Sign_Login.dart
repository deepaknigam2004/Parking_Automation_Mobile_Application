
import 'package:flutter/material.dart';

class BackgroundSignLogin extends StatefulWidget {
  const BackgroundSignLogin({super.key});

  @override
  State<BackgroundSignLogin> createState() => _BackgroundSignLoginState();
}

class _BackgroundSignLoginState extends State<BackgroundSignLogin> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();


  List images = [
    Image.asset('assets/images/signUpPage2.png',),
    Image.asset('assets/images/signUpPage5.png',),
  ];

  List name = [
    "Hassle-free Parking Experience", "Discover Parking Lots near You"
  ];


  // Design

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              // height: MediaQuery.of(context).size.height/2.1777,
              height: MediaQuery.of(context).size.height/2.1,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  // physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index)
                  {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height/4,
                            width: MediaQuery.of(context).size.width,
                            child: images[index],
                          ),
                        ),
                        Text(name[index], style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white,letterSpacing: 1),),
                      ],
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
