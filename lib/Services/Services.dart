import 'package:flutter_structure/EnvironmentConfig/AppConfig/app_config_dart.dart';

import '/Utility/AppConfig.dart';

abstract class BoneService {
  late String endPoint;
  late String port;
}

class Services {
  static var _devServicer = DevService();
  static var _prodServicer = ProdService();
  static BoneService get services {
    AppConfig appConfig = ApplicationConfiguration.getAppConfig;
    var env = appConfig.appEnvironment;
    switch (env) {
      case 'prod':
        return _prodServicer;
      case 'dev':
        return _devServicer;
      default:
        return _devServicer;
    }
  }
}

class DevService implements BoneService {
  @override
  String endPoint = "some.dev.com";

  @override
  String port = "5555";
}

class ProdService implements BoneService {
  @override
  String endPoint = "some.prod.com";

  @override
  String port = "1111";
}
