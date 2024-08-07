import 'package:flutter/material.dart';

import 'my_plugin_platform_interface.dart';

class MyPlugin {
  Future<String?> getPlatformVersion() {
    return MyPluginPlatform.instance.getPlatformVersion();
  }

  Widget createTextView({required String text}) {
    return MyPluginPlatform.instance.createTextView(text: text);
  }
}
