import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:location/location.dart';
import 'package:sarasotaapp/colors.dart';
import 'package:sarasotaapp/model/locationitem.dart';
import 'package:sarasotaapp/navigation.dart';
import 'package:sarasotaapp/pages/home_page/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:permission_handler/permission_handler.dart' as p;

class OnBoardingPage extends StatefulWidget {
  List<LocationItem> cardsData = [];
  OnBoardingPage({this.cardsData});
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('onboarding', 'yes');
    Navigation.closeOpen(
        context,
        Home(
          cardsData: widget.cardsData,
        ));
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0, color: Colors.grey);

    PageDecoration pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.w500,
          color: UiColors.primaryColor),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,

      pages: [
        PageViewModel(
          title: "Welcome!",
          body:
              "We have rebuilt our appto offer an improved flow and easier access to the features our community uses the most.Please take a moment to swipe through some highlights!",
          image: Image.asset('assets/onboarding/smh.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Location Services",
          body:
              "To take full advantage of thebuilt-in directions to our manyfacilities, please enable “Location Services”.",
          image: Image.asset('assets/onboarding/location.png'),
          footer: ElevatedButton(
            onPressed: () async {
              var location = Location();
              bool gotEnabled = await location.requestService();
              if (gotEnabled) {
                print('granted');
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Enable',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: UiColors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          image: Image.asset('assets/onboarding/status.png'),
          title: "Surgery Status",
          body:
              "Find out how your loved one’s surgical procedure is progressing.",
          decoration: pageDecoration,
        ),
        PageViewModel(
          image: Image.asset('assets/onboarding/checker.png'),
          title: "Symptom Checker",
          body:
              "Helps you decide where you should go for medical care - whether it's to stay at home,visit an urgent care or the ER.",
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback

      skipFlex: 0,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,

      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
