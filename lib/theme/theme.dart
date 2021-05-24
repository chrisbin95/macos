import 'package:flutter/material.dart';
import 'sharedPref.dart';

class ThemeNotifier with ChangeNotifier {

  // static bool isDark;

  static final ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
        headline4: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 12,
        )
    ),
    primarySwatch: Colors.blueGrey,
    backgroundColor: Colors.white.withOpacity(0.2), //Control Center
    cardColor: Colors.black.withOpacity(0.0), //Control Center item border, font color
    accentColor: Colors.black.withOpacity(.3), //shadow color
    focusColor: Colors.white.withOpacity(0.4), //docker color
    primaryTextTheme: TextTheme(
      button: TextStyle(
        color: Colors.blueGrey,
        decorationColor: Colors.blueGrey[300],
      ),
      subtitle1: TextStyle(
        color: Colors.black,
      ),
    ),
    bottomAppBarColor: Colors.blueGrey[900],
    iconTheme: IconThemeData(color: Colors.blueGrey),
    buttonColor: Colors.black.withOpacity(0.13), //darkMode button

  );

  static final ThemeData darkTheme = ThemeData(
    textTheme: TextTheme(
      headline4: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
      )
    ),
    primarySwatch: Colors.deepPurple,
      backgroundColor: Color(0xff2b2b2b).withOpacity(.1), //Control Center
    cardColor: Colors.white.withOpacity(0.2), //Control Center item border, font color
      accentColor: Colors.black.withOpacity(.4), //shadow color
      focusColor: Color(0xff6c5252).withOpacity(0.3), //docker color

      scaffoldBackgroundColor: Color(0xff242b4b),
    primaryTextTheme: TextTheme(
      button: TextStyle(
        color: Colors.blueGrey[200],
        decorationColor: Colors.blueGrey[50],
      ),
      subtitle1: TextStyle(
        color: Colors.blueGrey[300],
      ),
    ),
    bottomAppBarColor: Colors.black,
    iconTheme: IconThemeData(color: Colors.blueGrey[200]),
      buttonColor: Colors.white //darkMode button
  );

  ThemeData _themeData;
  ThemeNotifier(this._themeData);
  getTheme() => _themeData;

  isDark() => _themeData==lightTheme?false:true;


  setTheme(ThemeData themeData) async {
    _themeData = themeData;
    notifyListeners();
  }

  // ThemeNotifier() {
  //   StorageManager.readData('themeMode').then((value) {
  //     print('value read from storage: ' + value.toString());
  //     themeMode = value ?? 'light';
  //     if (themeMode == 'light') {
  //       _themeData = lightTheme;
  //      // dark=false;
  //     } else {
  //       print('setting dark theme');
  //       _themeData = darkTheme;
  //      //dark=true;
  //     }
  //     notifyListeners();
  //   });
  // }
  //
  //
  //
  // void setDarkMode() async {
  //   _themeData = darkTheme;
  //   StorageManager.saveData('themeMode', 'dark');
  //   notifyListeners();
  // }
  //
  // void setLightMode() async {
  //   _themeData = lightTheme;
  //   StorageManager.saveData('themeMode', 'light');
  //   notifyListeners();
  //
  // }

}