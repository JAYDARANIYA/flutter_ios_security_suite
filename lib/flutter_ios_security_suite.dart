import 'flutter_ios_security_suite_platform_interface.dart';

class FlutterIosSecuritySuite {
  Future<bool?> amIJailbroken() {
    return FlutterIosSecuritySuitePlatform.instance.amIJailbroken();
  }

  Future<bool?> amIDebugged() {
    return FlutterIosSecuritySuitePlatform.instance.amIDebugged();
  }

  Future<bool?> amIReverseEngineered() {
    return FlutterIosSecuritySuitePlatform.instance.amIReverseEngineered();
  }
}
