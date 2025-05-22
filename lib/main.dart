import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:minor_project/firebase_options.dart';
import 'package:minor_project/screens/home_page.dart';
import 'package:minor_project/screens/login_page.dart';
import 'package:minor_project/screens/profile.dart';
import 'package:minor_project/screens/signup_page.dart';
import 'package:minor_project/screens/start_page.dart';
import 'package:minor_project/screens/vehicle_page.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: StartPage(),
      home: StartPage(),
      routes: {
        'sign': (context) => SignUpPage(),
        'login': (context) => LoginPage(),
        'home': (context) => HomePage(),
        'profile': (context) => ProfilePage(),
        'vehicle': (context) => VehiclePage(),
      },
    );
  }
}




