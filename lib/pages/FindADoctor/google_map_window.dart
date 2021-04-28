import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWindow extends StatelessWidget {
  final latitude;
  final longitude;
  MapWindow({@required this.latitude, @required this.longitude});
  Completer<GoogleMapController> _controller = Completer();

  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition:
          CameraPosition(target: LatLng(latitude, longitude), zoom: 15),
      myLocationButtonEnabled: false,
      markers: Set<Marker>.of([
        Marker(
          markerId: MarkerId('hui'),
          position: LatLng(latitude, longitude),
        )
      ]),
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
    );
  }
}
