import '../../MainApplication.dart';
import '../AppConfig/app_config_dart.dart';
import '/EnvironmentConfig/AppConfig/config_dev.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  final AppConfig appConfig = AppConfigDev();
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
