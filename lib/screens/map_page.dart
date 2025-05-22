import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {

  static final CameraPosition _kGooglePlex = const CameraPosition(
      // target: LatLng(37.42796133580664, -122.085749655962),
    target: LatLng(22.719568, 75.857727),
    zoom: 14,
  );


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
          child: GoogleMap(
            initialCameraPosition: _kGooglePlex,
          ),
      ),
    );
  }
}
