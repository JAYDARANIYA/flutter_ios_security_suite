# flutter_ios_security_suite

[![pub](https://img.shields.io/pub/v/flutter_ios_security_suite.svg)](https://pub.dev/packages/flutter_ios_security_suite)
[![License: MIT](https://img.shields.io/badge/license-MIT-purple.svg)](https://opensource.org/licenses/MIT)
[![Github issues](https://img.shields.io/github/issues/JAYDARANIYA/flutter_ios_security_suite)](https://github.com/JAYDARANIYA/flutter_ios_security_suite/issues?q=is%3Aissue+is%3Aopen+)
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat-square)](https://github.com/JAYDARANIYA/flutter_ios_security_suite/pulls)

A Flutter package that integrates the [IOSSecuritySuite](https://github.com/securing/IOSSecuritySuite) iOS pod to provide enhanced iOS security features in Flutter applications.

## Features

This Flutter package provides the following security checks:

- `amIJailbroken()`: Checks if the device is jailbroken.
- `amIDebugged()`: Detects if the application is being debugged.
- `amIReverseEngineered()`: Determines if the app has been reverse-engineered.

## Installation & Usage

1. Add this to your package's `pubspec.yaml` file:
```yaml
dependencies:
  flutter_ios_security_suite: ^0.0.1
```
2. Update the Info.plist in your Flutter iOS project to include:
``` xml
<key>LSApplicationQueriesSchemes</key>
<array>
    <string>undecimus</string>
    <string>sileo</string>
    <string>zbra</string>
    <string>filza</string>
    <string>activator</string>
</array>
```
3. Add the following imports to your Dart code
``` dart
import 'package:flutter_ios_security_suite/flutter_ios_security_suite.dart';
```
4. functions
``` dart
final _flutterIosSecuritySuitePlugin = FlutterIosSecuritySuite();

bool? amIJailbroken = await _flutterIosSecuritySuitePlugin.amIJailbroken();
bool? amIDebugged = await _flutterIosSecuritySuitePlugin.amIDebugged();
bool? amIReverseEngineered = await _flutterIosSecuritySuitePlugin.amIReverseEngineered();
```

## Contributing
Contributions are welcome! Please feel free to submit a Pull Request.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details and the use of third-party libraries is detailed in [NOTICES](NOTICES).
