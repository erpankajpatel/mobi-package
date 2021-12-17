import 'dart:async';

import 'package:flutter/services.dart';

class MobiConnect {
  static const MethodChannel _channel = MethodChannel('mobi_connect');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<void> showToast(String message) async {
    await _channel
        .invokeMethod('showToast', <String, dynamic>{'message': message});
  }
}
