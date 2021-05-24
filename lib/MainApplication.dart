import 'package:flutter/material.dart';
import 'package:flutter_structure/Provider/Provider.dart';
import 'package:flutter_structure/Provider/theme_provider.dart';
import 'package:flutter_structure/router.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'EnvironmentConfig/AppConfig/app_config_dart.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';
import 'Utility/AppConfig.dart';

class MainApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BannerConfiguration bannerConfig =
        ApplicationConfiguration.getBannerConfiguration;
    AppConfig appConfig = ApplicationConfiguration.getAppConfig;

    print("appConfig.appEnvironment : ${appConfig.appEnvironment}");

    if (bannerConfig.isShowBanner) {
      return FlavorBanner(
        child: MainApplicationConfig(),
      );
    } else {
      return MainApplicationConfig();
    }
  }
}

class MainApplicationConfig extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    var appTheme = watch(themeStateProvider);
    return MaterialApp(
      theme: AppThemeData(appTheme: appTheme).theme,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: "Flutter Structure",
      routes: PageRouter.routerPage,
      initialRoute: PageRouter.homePage,
    );
  }
}
