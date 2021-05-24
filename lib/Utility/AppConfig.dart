import 'package:flutter_flavor/flutter_flavor.dart';
import '/EnvironmentConfig/AppConfig/app_config_dart.dart';

class ApplicationConfiguration {
  static AppConfig get getAppConfig {
    AppConfig appConfig = FlavorConfig.instance!.variables!["appConfig"];
    return appConfig;
  }

  static BannerConfiguration get getBannerConfiguration {
    BannerConfiguration appConfig =
        FlavorConfig.instance!.variables!["appConfig"];
    return appConfig;
  }
}
