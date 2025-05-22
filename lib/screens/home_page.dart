
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:minor_project/screens/map_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // List categoryIcon = [
  //
  //   Image.asset('assets/images/car.png',height: 30.0,width: 30.0,),
  //
  //    // Icon(Icons.car_crash_outlined, color: Colors.blue,size: 40,),
  //    // Icon(Icons.local_parking_sharp, color: Colors.white, size: 40,),
  //    // Icon(Icons.person_outlined, color: Colors.white, size: 40,),
  //
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              // physics: NeverScrollableScrollPhysics(),
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/4.5,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Container(
                    padding: EdgeInsetsDirectional.only(start: 20.0, top: 35.0,  end: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Welcome to",style: TextStyle(fontSize: 15.0,color: Colors.black.withOpacity(0.8),fontWeight: FontWeight.w900, letterSpacing: 1),),
                        Row(
                          children: [
                            Text("Wheel",style: TextStyle(fontSize: 25.0,color: Colors.black.withOpacity(0.8),fontWeight: FontWeight.bold, letterSpacing: 1),),
                            Text("Parker",style: TextStyle(fontSize: 25.0,color: Colors.cyanAccent.withOpacity(0.6),fontWeight: FontWeight.bold, letterSpacing: 1),),
                          ],
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search here ',
                              hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      // color: Color(0xFF674AEF),
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/1.48,
                  child: MapPage(),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/9.9,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: (){
                            Navigator.pushNamed(context, 'vehicle');
                          },
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Image.asset('assets/images/car3.png',height: 28.0 ,width: 28.0,),
                                ),
                                Text("Vehicle",style: TextStyle(color: Colors.black.withOpacity(0.5),),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: (){},
                          icon: Container(
                            // height: 65.0,
                            // width: 65.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 0.5,color: Colors.blue),
                            ),
                            child: Image.asset('assets/images/img1.png',),
                          )
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: ()
                          {
                            Navigator.pushNamed(context, 'profile');
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(

                              ),
                              Text("Profile",style: TextStyle(color: Colors.black.withOpacity(0.5),
                                  fontWeight: FontWeight.normal),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
