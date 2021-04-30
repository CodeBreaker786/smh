import 'package:flutter/material.dart';
import 'package:sarasotaapp/model/serviceitem.dart';
import 'package:sarasotaapp/navigation.dart';
import 'package:sarasotaapp/pages/services/info.dart';
import 'package:sarasotaapp/pages/services/servicedetails.dart';
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
    setData();
    return Scaffold(
      appBar: AppBar(
        title: UALabel(
          text: 'Our Services',
          size: UATheme.headingSize(),
        ),
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, i) {
            return ListTile(
              onTap: () {
                Navigation.open(
                    context,
                    ServiceDetails(
                      info: list[i],
                    ));
              },
              title: UALabel(
                paddingBottom: 20,
                paddingTop: 20,
                paddingLeft: 20,
                text: list[i].title,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.green,
              ),
            );
          }),
    );
  }

  setData() {
    list = [];
    for (int i = 0; i < ServicesInfo.title.length; i++) {
      ServiceItem serviceItem = new ServiceItem();
      serviceItem.title = ServicesInfo.title[i];
      serviceItem.url = ServicesInfo.url[i];
      serviceItem.description = ServicesInfo.description[i];
      serviceItem.image = ServicesInfo.image[i];
      list.add(serviceItem);
    }
  }

  line() {
    return Container(
      height: 1,
      color: Colors.grey.shade300,
    );
  }
}
