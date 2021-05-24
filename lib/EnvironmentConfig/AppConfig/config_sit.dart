import '/EnvironmentConfig/AppConfig/app_config_dart.dart';

class AppConfigSit extends BannerConfiguration implements AppConfig {
  final _appEnvironment = "sit";

  AppConfigSit() : super();

  @override
  String get appEnvironment => _appEnvironment;
}
