import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;

  void addCustomIcon(){
    BitmapDescriptor.fromAssetImage(ImageConfiguration(), "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(initialCameraPosition: CameraPosition(
        target: LatLng(37.5575,126.9373),
        zoom: 17,
        ),
        markers: {
        Marker(
          markerId: MarkerId('demo'),
          position: LatLng(37.5575,126.9373),
          draggable: true,
          onDragEnd: (value) {

          }
        )
        },
      ),
    );
  }
}

