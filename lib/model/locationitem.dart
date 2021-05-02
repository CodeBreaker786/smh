import 'package:flutter/material.dart';

class LocationItem {
  String title;
  String description;
  String image;
  String url;
  String address;
  double latitude;
  double longitude;
  String distance;
  String mapAddress;
  LocationItem({
  @required this.title,
  @required this.description,
  @required this.image,
  @required this.url,@required this.address,@required this.latitude,@required this.longitude,  this.distance,@required this.mapAddress
});
}
