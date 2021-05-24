library first_view;

import 'package:flutter_structure/Provider/Provider.dart';
import 'package:flutter_structure/Provider/theme_provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'first_view_model.dart';

part 'first_mobile.dart';
part 'first_tablet.dart';
part 'first_desktop.dart';

class FirstView extends StatelessWidget {
  final notifier = ChangeNotifierProvider((ref) => FirstViewModel());
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        FirstViewModel viewModel = watch(notifier);
        return ScreenTypeLayout(
          mobile: _FirstMobile(viewModel),
          desktop: _FirstDesktop(viewModel),
          tablet: _FirstTablet(viewModel),
        );
      },
    );
  }
}
