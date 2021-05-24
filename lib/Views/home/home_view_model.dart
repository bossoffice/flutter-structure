import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel();

  void navigateToHomeView(BuildContext context) {
    Navigator.pushNamed(context, '/first');
  }
  // Add ViewModel specific code here
}
