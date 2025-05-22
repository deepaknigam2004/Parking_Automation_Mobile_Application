import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {

    var arrNames =['My Bookings', 'Saved Parking', 'Invite your friends', 'Rate Us', 'Language', 'Logout'];

    return Scaffold(
      body: ListView(
        children: [
          Container(
            // color: Colors.blue,
            height: MediaQuery.of(context).size.height/13.5,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10.0, ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.person,size: 30.0,),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("You"),
                      Text("Phone number"),

                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  TextButton.icon(onPressed: (){},
                    icon: Icon(Icons.edit),
                    label: Text("Edit"),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.separated(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 20.0,vertical: 30.0),
                itemBuilder: (context, index){
                  return Text(arrNames[index],style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15.0),);
                },
                separatorBuilder: (context, index){
                  return Divider(height: 50,thickness: 0.8,);
                },
                itemCount: arrNames.length,
            ),
          ),
        ],
      ),
    );
  }
}
