import 'package:flutter/material.dart';
import 'package:sarasotaapp/colors.dart';
import 'package:sarasotaapp/pages/splashscreen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'sarasotaapp',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: UiColors.primaryColor,
            iconTheme: IconThemeData(color: Colors.white),
            textTheme: TextTheme(
              bodyText2: TextStyle(
                color: Colors.white,
              ),
            )),
        builder: (context, child) {
          return MediaQuery(
            child: child,
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          );
        },
        home: SplashScreen());
  }
}
