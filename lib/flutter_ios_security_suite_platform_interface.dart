import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_ios_security_suite_method_channel.dart';

abstract class FlutterIosSecuritySuitePlatform extends PlatformInterface {
  /// Constructs a FlutterIosSecuritySuitePlatform.
  FlutterIosSecuritySuitePlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterIosSecuritySuitePlatform _instance =
      MethodChannelFlutterIosSecuritySuite();

  /// The default instance of [FlutterIosSecuritySuitePlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterIosSecuritySuite].
  static FlutterIosSecuritySuitePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterIosSecuritySuitePlatform] when
  /// they register themselves.
  static set instance(FlutterIosSecuritySuitePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool?> amIJailbroken() {
    throw UnimplementedError('amIJailbroken() has not been implemented.');
  }

  Future<bool?> amIDebugged() {
    throw UnimplementedError('amIDebugged() has not been implemented.');
  }

  Future<bool?> amIReverseEngineered() {
    throw UnimplementedError(
        'amIReverseEngineered() has not been implemented.');
  }
}
