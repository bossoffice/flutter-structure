import '/EnvironmentConfig/AppConfig/app_config_dart.dart';

class AppConfigUat extends BannerConfiguration implements AppConfig {
  final _appEnvironment = "uat";

  AppConfigUat() : super();

  @override
  String get appEnvironment => _appEnvironment;
}
