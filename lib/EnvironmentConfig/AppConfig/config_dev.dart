import '/EnvironmentConfig/AppConfig/app_config_dart.dart';

class AppConfigDev extends BannerConfiguration implements AppConfig {
  final _appEnvironment = "dev";

  AppConfigDev() : super();

  @override
  String get appEnvironment => _appEnvironment;
}
