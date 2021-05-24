import 'package:flutter/material.dart';
import 'package:flutter_structure/Theme/DarkTheme.dart';
import 'package:flutter_structure/Theme/GreenTheme.dart';
import 'package:flutter_structure/Theme/WhiteTheme.dart';
import 'package:riverpod/riverpod.dart';

enum AppTheme { Green, Dark, White }

class AppThemeData {
  final AppTheme appTheme;
  AppThemeData({required this.appTheme});

  ThemeData get theme {
    ThemeData themeData;
    switch (appTheme) {
      case AppTheme.Dark:
        themeData = darkTheme;
        break;
      case AppTheme.Green:
        themeData = greenTheme;
        break;
      case AppTheme.White:
        themeData = whiteTheme;
        break;
    }
    return themeData;
  }
}

class AppThemeNotifier extends StateNotifier<AppTheme> {
  AppThemeNotifier({AppTheme state: AppTheme.White}) : super(state);

  void setAppTheme(AppTheme appTheme) {
    state = appTheme;
  }
}
