import 'flutter_ios_security_suite_platform_interface.dart';

class FlutterIosSecuritySuite {
  /// Returns true if the device is jailbroken, false if not, null if unknown. (Only iOS)
  Future<bool?> amIJailbroken() {
    return FlutterIosSecuritySuitePlatform.instance.amIJailbroken();
  }

  /// Returns true if the device is debugged, false if not, null if unknown. (Only iOS)
  Future<bool?> amIDebugged() {
    return FlutterIosSecuritySuitePlatform.instance.amIDebugged();
  }

  /// Returns true if the device is reverse engineered, false if not, null if unknown. (Only iOS)
  Future<bool?> amIReverseEngineered() {
    return FlutterIosSecuritySuitePlatform.instance.amIReverseEngineered();
  }
}
