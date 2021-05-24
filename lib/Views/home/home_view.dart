library home_view;

import 'package:flutter_structure/Provider/Provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'home_view_model.dart';

part 'home_mobile.dart';
part 'home_tablet.dart';
part 'home_desktop.dart';

class HomeView extends StatelessWidget {
  final notifier = ChangeNotifierProvider((ref) => HomeViewModel());
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        HomeViewModel viewModel = watch(notifier);
        return ScreenTypeLayout(
          mobile: _HomeMobile(viewModel),
          desktop: _HomeDesktop(viewModel),
          tablet: _HomeTablet(viewModel),
        );
      },
    );
  }
}
