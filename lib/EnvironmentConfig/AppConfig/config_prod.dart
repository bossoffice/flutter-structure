import '/EnvironmentConfig/AppConfig/app_config_dart.dart';

class AppConfigProd extends BannerConfiguration implements AppConfig {
  final _appEnvironment = "prod";

  AppConfigProd() : super();

  @override
  String get appEnvironment => _appEnvironment;

  @override
  bool get isShowBanner => false;
}
