import 'package:flutter/material.dart';
import 'package:sarasotaapp/model/serviceitem.dart';
import 'package:sarasotaapp/navigation.dart';

import 'package:sarasotaapp/pages/services/servicedetails.dart';
import 'package:sarasotaapp/pages/services/services_info.dart';
import 'package:sarasotaapp/uatheme.dart';
import 'package:sarasotaapp/widgets/ualabel.dart';

class OurServices extends StatefulWidget {
  @override
  _OurServicesState createState() => _OurServicesState();
}

class _OurServicesState extends State<OurServices> {
  List<ServiceItem> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UALabel(
          text: 'Our Services',
          size: UATheme.headingSize(),
        ),
      ),
      body: ListView.separated(
        itemCount: ServicesInfo.serviceitems.length,
        itemBuilder: (context, i) {
          return ListTile(
            onTap: () {
              Navigation.open(
                  context,
                  ServiceDetails(
                    info: ServicesInfo.serviceitems[i],
                  ));
            },
            title: UALabel(
              text: ServicesInfo.serviceitems[i].title,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          );
        },
        separatorBuilder: (context, idex) {
          return Divider(
            thickness: 1,
          );
        },
      ),
    );
  }

  line() {
    return Container(
      height: 1,
      color: Colors.grey.shade300,
    );
  }
}
