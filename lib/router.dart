import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_structure/Views/first/first_view.dart';
import 'package:flutter_structure/Views/home/home_view.dart';

class PageRouter {
  static String get homePage {
    return "home";
  }

  static Map<String, WidgetBuilder> get routerPage {
    return {
      "home": (context) => HomeView(),
      "/first": (context) => FirstView(),
    };
  }
}
