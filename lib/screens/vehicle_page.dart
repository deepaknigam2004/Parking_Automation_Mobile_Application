import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class VehiclePage extends StatefulWidget {
  const VehiclePage({super.key});

  @override
  State<VehiclePage> createState() => _VehiclePageState();
}

class _VehiclePageState extends State<VehiclePage> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _vehicleController = TextEditingController();
  final TextEditingController _modelController = TextEditingController();
  final TextEditingController _fuelController = TextEditingController();
  final TextEditingController _transmissionController = TextEditingController();
  final TextEditingController _chassisNumberController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Vehicle Details", style: TextStyle(color: Colors.white),),backgroundColor: Colors.blue,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // color: Colors.yellow,
              height: MediaQuery.of(context).size.height/3.5,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 30.0, right: 20.0),
                child: Image.asset('assets/images/vehicle3.png',),
              ),
            ),
            Container(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Enter Vehicle Number", style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600),),
                          Container(
                            height: MediaQuery.of(context).size.height/13,
                            child: TextFormField(
                              controller: _vehicleController,
                              decoration: InputDecoration(
                                // hintText: 'Enter vehicle name',
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your vehicle';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        // height: 16.0
                        height: MediaQuery.of(context).size.height/50,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Make & Model", style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600),),
                          Container(
                            height: MediaQuery.of(context).size.height/13,
                            child: TextFormField(
                              controller: _modelController,
                              decoration: InputDecoration(
                                // hintText: 'Enter vehicle name',
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter make & model';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        // height: 16.0
                        height: MediaQuery.of(context).size.height/50,
                      ),
                      
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Fuel Type", style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600),),
                                Container(
                                  height: MediaQuery.of(context).size.height/13,
                                  child: TextFormField(
                                    controller: _fuelController,
                                    decoration: InputDecoration(
                                      // hintText: 'Enter vehicle name',
                                      border: OutlineInputBorder(),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your fuel';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(
                            // height: 16.0
                            // height: MediaQuery.of(context).size.height/50,
                            width: MediaQuery.of(context).size.width/10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Transmission", style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600),),
                                Container(
                                  height: MediaQuery.of(context).size.height/13,
                                  child: TextFormField(
                                    controller: _transmissionController,
                                    decoration: InputDecoration(
                                      // hintText: 'Enter vehicle name',
                                      border: OutlineInputBorder(),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your transmission';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      
                      SizedBox(
                        // height: 16.0
                        height: MediaQuery.of(context).size.height/50,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Chassis Number", style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600),),
                          Container(
                            height: MediaQuery.of(context).size.height/13,
                            child: TextFormField(
                              controller: _chassisNumberController,
                              decoration: InputDecoration(
                                // hintText: 'Enter vehicle name',
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your chassis number';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        // height: 16.0
                        height: MediaQuery.of(context).size.height/40,
                      ),

                      TextButton(
                        onPressed: () {
                          // Navigator.pushReplacementNamed(context,'home');
                          if (_formKey.currentState!.validate()) {
                            // Login logic goes here
                            Navigator.pushReplacementNamed(context,'home');
                          }
                        },
                        child: Container(
                            // color: Colors.blue,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height/20,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: Center(
                                child: Text('Submit', style: TextStyle(fontSize: 17.0, color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
