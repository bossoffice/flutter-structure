import 'package:flutter/material.dart';
import 'package:flutter_structure/Services/Services.dart';
import 'package:easy_localization/easy_localization.dart';

class FirstViewModel extends ChangeNotifier {
  FirstViewModel();

  var _welComeString = "Hello World";

  String get welComeString => this._welComeString;

  set welComeString(String str) {
    this._welComeString = str;
    print(Services.services.endPoint);
    notifyListeners();
  }

  void popView(BuildContext context) {
    Navigator.pop(context);
  }

  void changeLanguages(BuildContext context) {
    if (context.locale.toString() == 'th') {
      context.setLocale(Locale('en'));
    } else {
      context.setLocale(Locale('th'));
    }
  }
  // Add ViewModel specific code here
}
