
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterTestPlugin {
  static const MethodChannel _channel =
      const MethodChannel('flutter_test_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static String test(){
    return "来自自定义flutter插件的一个测试";
  }
}
