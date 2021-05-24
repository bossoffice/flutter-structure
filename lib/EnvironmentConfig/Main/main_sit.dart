import 'package:easy_localization/easy_localization.dart';

import '../../MainApplication.dart';
import 'package:flutter/material.dart';
import '../AppConfig/app_config_dart.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import '/EnvironmentConfig/AppConfig/config_sit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  final AppConfig appConfig = AppConfigSit();
  FlavorConfig(
    name: appConfig.appEnvironment,
    variables: {
      "appConfig": appConfig,
    },
  );
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('th')],
      path: 'assets/lang',
      fallbackLocale: Locale('en'),
      //change your application Main here
      child: ProviderScope(
        child: MainApplication(),
      ),
    ),
  );
}
