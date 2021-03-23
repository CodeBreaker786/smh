import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static Future<bool> getLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isLoggedIn');
  }

  static setLoggedIn(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isLoggedIn', value);
  }

  static Future<String> getSurgeryDate() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('surgeryDate');
  }

  static setSurgeryDate(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('surgeryDate', value);
  }
}
