import 'package:flutter/material.dart';

import 'package:store_redirect/store_redirect.dart';

class Apps extends StatefulWidget {
  @override
  _AppsState createState() => _AppsState();
}

class _AppsState extends State<Apps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Apps',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView(
        children: <Widget>[
          line(),
          ListTile(
            leading: Container(
              clipBehavior: Clip.antiAlias,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
              child: Image.asset(
                'assets/images/icon.jpg',
              ),
            ),
            title: Text(
              'SMH Urgent Care',
            ),
            subtitle: Text(
              'Download',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            onTap: () {
              StoreRedirect.redirect(
                  androidAppId:
                  "com.soln.S9151C8A3525748378EEF590856613786&hl=en_SG",
                  iOSAppId: "1438233567");
            },
          ),
          line(),
          ListTile(
            leading: Container(
              clipBehavior: Clip.antiAlias,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
              child: Image.asset(
                'assets/images/bariatricicon.png',
              ),
            ),
            title: Text(
              'SMH Bariatric Surgery',
            ),
            subtitle: Text(
              'Download',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            onTap: () {
              StoreRedirect.redirect(
                  androidAppId:
                  "com.soln.SCAA21C31421B4D6596B183509DFD0184&hl=en_SG",
                  iOSAppId: "1422806614");
            },
          ),
          line(),
          ListTile(
            leading: Container(
              clipBehavior: Clip.antiAlias,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
              child: Image.asset(
                'assets/images/smhwayfinder.jpeg',
              ),
            ),
            title: Text(
              'SMH Wayfinder',
            ),
            subtitle: Text(
              'Download',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            onTap: () {
              StoreRedirect.redirect(
                  androidAppId:
                  "com.logicjunction.smh.wayfinder&hl=en_SG",
                  iOSAppId: "1234682654");
            },
          ),
          line(),
          ListTile(
            leading: Container(
              clipBehavior: Clip.antiAlias,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
              child: Image.asset(
                'assets/images/yomingo.png',
              ),
            ),
            title: Text(
              'Yomingo! (SMH Baby)',
            ),
            subtitle: Text(
              'Download',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            onTap: () {
              StoreRedirect.redirect(
                  androidAppId:
                  "com.cci.yomingo&hl=en_SG",
                  iOSAppId: "1377789095");
            },
          ),

        ],
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
