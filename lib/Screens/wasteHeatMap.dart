import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class WasteHeatMap extends StatefulWidget {
  @override
  _WasteHeatMapState createState() => _WasteHeatMapState();
}

class _WasteHeatMapState extends State<WasteHeatMap> {
  Completer<GoogleMapController> _controller = Completer();

  List<Marker> _wasteLocations=[];
  static final CameraPosition _center = CameraPosition(
    target: LatLng(27.6706, 84.4385),
    zoom: 15,
  );

 @override
  void initState() {
    super.initState();
    _wasteLocations.add(Marker(
        markerId: MarkerId('1'),
        position: LatLng(27.6727, 84.4383)));
    _wasteLocations.add(Marker(
        markerId: MarkerId('2'),
        position: LatLng(27.6705, 84.4394)));
    _wasteLocations.add(Marker(
        markerId: MarkerId('3'),
        position: LatLng(27.6716, 84.4385)));
         _wasteLocations.add(Marker(
        markerId: MarkerId('4'),
        position: LatLng(27.6737, 84.4383)));
    _wasteLocations.add(Marker(
        markerId: MarkerId('5'),
        position: LatLng(27.6725, 84.4374)));
    _wasteLocations.add(Marker(
        markerId: MarkerId('6'),
        position: LatLng(27.6719, 84.4365)));
  }

Future getCurrentLocation() async{
  Position position = await Geolocator().getLastKnownPosition(desiredAccuracy: LocationAccuracy.high);
  return position;
}
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children:<Widget>[

GoogleMap(
        mapType: MapType.normal,
         markers: Set.from(_wasteLocations),
        initialCameraPosition: _center,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
         
        },
        
      ),

      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
           Align(
    alignment: Alignment.topRight,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(icon: Icon(Icons.add_circle,size: 50,color: Colors.green), onPressed:() {print('Hello');}),
           
            ],
    ),
  ),
          ],
        ),
      ),
    
      ]

    );
  }
}


