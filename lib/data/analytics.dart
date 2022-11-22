import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/foundation.dart';

class AnalyticsService extends ChangeNotifier{
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  FirebaseAnalyticsObserver getAnalyticsObserver() =>
      FirebaseAnalyticsObserver(analytics: analytics);

  Future<void> setCurrentScreen(String screen) async {
    print('Setting current screen to $screen');
    await analytics.setCurrentScreen(
      screenName: screen,
    );
  }

  // User properties tells us what the user is
  Future setUserProperties({ required String value, required String name}) async {
    await analytics.setUserProperty(name: name, value: value);
  }

  Future setUserId({required String userId,}) async {
    await analytics.setUserId(id: userId);
  }

  Future logLogin(String method) async {
    await analytics.logLogin(loginMethod: method);
  }

  Future logSignUp(String method) async {
    await analytics.logSignUp(signUpMethod: method);
  }


  Future logOpened(String a) async {
    await analytics.logEvent(
      name: "App Opened",
      parameters: {'app': a,},
    );
  }
}