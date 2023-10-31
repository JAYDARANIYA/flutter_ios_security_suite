import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_ios_security_suite/flutter_ios_security_suite.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String amIJailbroken = 'Unknown';
  String amIDebugged = 'Unknown';
  String amIReverseEngineered = 'Unknown';

  final _flutterIosSecuritySuitePlugin = FlutterIosSecuritySuite();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    if (!mounted) return;

    bool? amIJailbroken = await _flutterIosSecuritySuitePlugin.amIJailbroken();
    bool? amIDebugged = await _flutterIosSecuritySuitePlugin.amIDebugged();
    bool? amIReverseEngineered =
        await _flutterIosSecuritySuitePlugin.amIReverseEngineered();

    setState(() {
      // if null then set error or not or is respective value
      this.amIJailbroken = amIJailbroken == null
          ? 'Error'
          : amIJailbroken
              ? 'Yes'
              : 'No';

      this.amIDebugged = amIDebugged == null
          ? 'Error'
          : amIDebugged
              ? 'Yes'
              : 'No';
      this.amIReverseEngineered = amIReverseEngineered == null
          ? 'Error'
          : amIReverseEngineered
              ? 'Yes'
              : 'No';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Plugin example app'),
          ),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('Am I Jailbroken: $amIJailbroken\n'),
                Text('Am I Debugged: $amIDebugged\n'),
                Text('Am I Reverse Engineered: $amIReverseEngineered\n'),
              ],
            ),
          )),
    );
  }
}
