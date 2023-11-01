import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_ios_security_suite_platform_interface.dart';

/// An implementation of [FlutterIosSecuritySuitePlatform] that uses method channels.
class MethodChannelFlutterIosSecuritySuite
    extends FlutterIosSecuritySuitePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_ios_security_suite');

  @override
  Future<bool?> amIJailbroken() async {
    final isJailbroken =
        await methodChannel.invokeMethod<bool>('amIJailbroken');
    return isJailbroken;
  }

  @override
  Future<bool?> amIDebugged() async {
    final isDebugged = await methodChannel.invokeMethod<bool>('amIDebugged');
    return isDebugged;
  }

  @override
  Future<bool?> amIReverseEngineered() async {
    final isReverseEngineered =
        await methodChannel.invokeMethod<bool>('amIReverseEngineered');
    return isReverseEngineered;
  }
}
