import 'dart:math';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:sarasotaapp/model/locationitem.dart';
import 'package:sarasotaapp/navigation.dart';
import 'package:sarasotaapp/pages/locations/info.dart';
import 'package:sarasotaapp/pages/on_boarding_screen.dart';
import 'package:sarasotaapp/uatheme.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_page/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<LocationItem> list = [];
  double latitude;
  double longitude;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String onboarding = prefs.getString('onboarding');
    if (onboarding == null) {
      bool status = await Navigator.push(
          context, MaterialPageRoute(builder: (context) => OnBoardingPage()));
      if (status) {
        await getData();
        Navigation.closeOpen(
            context,
            Home(
              cardsData: list,
            ));
      }
    } else {
      await getData();
      Navigation.closeOpen(
          context,
          Home(
            cardsData: list,
          ));
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    UATheme.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          //color: Color(0xff639ec3),
          height: 250,
          width: 250,
          child: Center(child: Image.asset('assets/images/smhblueicon.png')),
        ),
      ),
    );
  }

  getData() async {
    await getLocation();
    setData();

    list.sort((a, b) =>
        Comparable.compare(double.parse(a.distance), double.parse(b.distance)));
    isLoading = false;
  }

  getLocation() async {
    var location = new Location();
    bool enabled = await location.serviceEnabled();
    if (enabled) {
      try {
        LocationData locationData = await location.getLocation();
        latitude = locationData.latitude;
        longitude = locationData.longitude;
        print("HERE");
        print(latitude.toString());
        print(longitude.toString());
      } on Exception {
        latitude = 0;
        longitude = 0;
        print("EXCEPTION");
        print(latitude.toString());
        print(longitude.toString());
      }
    } else {
      bool gotEnabled = await location.requestService();
      if (gotEnabled) {
        await getLocation();
      } else {
        latitude = 0;
        longitude = 0;
      }
    }
  }

  String calculateDistance(lat1, lon1, lat2, lon2) {
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 -
        c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
    return (12742 * asin(sqrt(a))).toStringAsFixed(2);
  }

  setData() {
    for (int i = 0; i < Info.title.length; i++) {
      LocationItem serviceItem = new LocationItem();
      serviceItem.title = Info.title[i];
      serviceItem.url = Info.url[i];
      serviceItem.description = Info.description[i];
      serviceItem.image = Info.image[i];
      serviceItem.address = Info.address[i];
      serviceItem.latitude = Info.latitude[i];
      serviceItem.longitude = Info.longitude[i];
      serviceItem.mapAddress = Info.mapAddress[i];
      serviceItem.distance = calculateDistance(
          Info.latitude[i], Info.longitude[i], latitude, longitude);
      list.add(serviceItem);
    }
  }
}
