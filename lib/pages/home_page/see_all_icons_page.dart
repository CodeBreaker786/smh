import 'package:flutter/material.dart';
import 'package:sarasotaapp/utils/colors.dart';
import 'package:sarasotaapp/model/locationitem.dart';
import 'package:sarasotaapp/utils/navigation.dart';
import 'package:sarasotaapp/pages/FindADoctor/getSpecilties.dart';
import 'package:sarasotaapp/pages/home_page/home.dart';
import 'package:sarasotaapp/pages/locations/locationdetails.dart';
import 'package:sarasotaapp/pages/services/ourservices.dart';
import 'package:sarasotaapp/pages/surgerystatus.dart';
import 'package:sarasotaapp/pages/symptom/step1.dart';
import 'nearest_locations.dart';
import 'package:sarasotaapp/pages/smhevents.dart';
import 'package:store_redirect/store_redirect.dart';

class MainIcons extends StatefulWidget {
  @override
  _MainIconsState createState() => _MainIconsState();
}

class _MainIconsState extends State<MainIcons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'How may we help you?',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        color: UiColors.primaryColor,
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: GridView.count(
            childAspectRatio: 0.9,
            crossAxisCount: 2,
            shrinkWrap: true,
            mainAxisSpacing: 0,
            children: [
              buildListTile(
                  padding: true,
                  title: 'Find a Doctor',
                  path: 'assets/images/main/find_a_doctor.png',
                  callBack: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return GetSpecialties();
                      }),
                    );
                  }),
              buildListTile(
                  title: 'Our Locations',
                  path: 'assets/images/main/ourlocations.png',
                  callBack: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return NearestLocations();
                      }),
                    );
                  }),
              buildListTile(
                  padding: true,
                  title: 'Symptom Checker',
                  path: 'assets/images/main/sympton_checker.png',
                  callBack: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return SymptomChecker();
                      }),
                    );
                  }),
              buildListTile(
                  padding: true,
                  title: 'Surgery Status',
                  path: 'assets/images/main/surgery_status.png',
                  callBack: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return SurgeryStatus(
                          url: 'https://surgerystatus.smh.com',
                        );
                      }),
                    );
                  }),
              buildListTile(
                  title: 'SMH Events',
                  path: 'assets/images/main/eventscalendar.png',
                  callBack: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return SMHEvents(
                          url: 'https://www.smh.com/Calendar',
                        );
                      }),
                    );
                  }),
              buildListTile(
                title: 'SMH Wayfinder',
                path: 'assets/images/main/smhwayfinder.png',
                callBack: () {
                  StoreRedirect.redirect(
                      androidAppId: "com.logicjunction.smh.wayfinder",
                      iOSAppId: "1234682654");
                },
              ),
              buildListTile(
                  title: 'Our Services',
                  path: 'assets/images/main/our_serives.png',
                  callBack: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return OurServices();
                      }),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
