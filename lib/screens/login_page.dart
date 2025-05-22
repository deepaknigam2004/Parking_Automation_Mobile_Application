import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:minor_project/screens/background_Sign_Login.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

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
                        Text("    Login",style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,letterSpacing: 1),),
                        Form(
                          key: _formKey,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0,),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height/13,
                                  child: TextFormField(
                                    controller: _usernameController,
                                    decoration: InputDecoration(
                                      labelText: 'Username',
                                      hintText: 'Enter your username',
                                      border: OutlineInputBorder(),
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
                                    // height: 16.0
                                  height: MediaQuery.of(context).size.height/50,
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height/13,
                                  child: TextFormField(
                                    controller: _passwordController,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      labelText: 'Password',
                                      hintText: 'Enter your password',
                                      border: OutlineInputBorder(),
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
                                  // height: 16.0
                                  height: MediaQuery.of(context).size.height/40,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushReplacementNamed(context,'home');
                                        if (_formKey.currentState!.validate()) {
                                            // Login logic goes here
                                        }
                                      },
                                      child: Text('Login'),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Forget your password?"),
                                        TextButton(
                                          onPressed: () {

                                          },
                                          child: Text("Forget"),
                                        ),
                                      ],
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