// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:minor_project/models/user_model.dart';
import 'package:minor_project/screens/background_Sign_Login.dart';
import 'package:minor_project/services/firestore_service.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  FirestoreService firestoreService = FirestoreService();

  void _saveUser() {
    if (_formKey.currentState!.validate()) {
      final newUser = UserModel(id: '', username: usernameController.text, email: emailController.text, password: passwordController.text);
      firestoreService.createUser(newUser);
      Navigator.pop(context);
    }
  }


  // var index = 4;

  List images = [
    Image.asset('assets/images/signUpPage2.png',),
    Image.asset('assets/images/signUpPage5.png',),
  ];

  List name = [
    "Hassle-free Parking Experience", "Discover Parking Lots near You"
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // color: Colors.blue,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.blue,
                  // height: MediaQuery.of(context).size.height/2.1777,
                  height: MediaQuery.of(context).size.height/2.1,
                  width: MediaQuery.of(context).size.width,
                  child: BackgroundSignLogin(),
                ),
                Container(
                  color: Colors.blue,
                  // height: MediaQuery.of(context).size.height/1.99,
                  height: MediaQuery.of(context).size.height/1.911,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    // color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0),),
                    ),
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        // SizedBox(
                        //   // height: 20.0,
                        //   // height: MediaQuery.of(context).size.height/35,
                        //   height: MediaQuery.of(context).size.height/50,
                        // ),
                        Text("   Sign Up",style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,letterSpacing: 1),),
                        Form(
                          key: _formKey,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0,),
                            child: Column(
                              children: [

                                Container(
                                  height: MediaQuery.of(context).size.height/13,
                                  child: TextFormField(
                                    controller: emailController,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "Email",
                                      // labelStyle: TextStyle(fontSize: 15.0,),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your email';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height/50,
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height/13,
                                  child: TextFormField(
                                    controller: usernameController,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "Username",
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your username';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  // height: 16.0,
                                  height: MediaQuery.of(context).size.height/50,
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height/13,
                                  child: TextFormField(
                                    controller: passwordController,
                                    obscureText: true,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "Password",
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your password';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  //height: 20.0,
                                  height: MediaQuery.of(context).size.height/40,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    _saveUser();
                                    if (_formKey.currentState!.validate()) {
                                    //     // Navigate the user to the Home page
                                      Navigator.pushNamed(context, 'home');
                                    }
                                  },
                                  child: Text("Sign Up"),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Already have an account? "),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, 'login');
                                      },
                                      child: Text("Login"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}