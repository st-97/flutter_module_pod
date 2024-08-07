import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'my_plugin_platform_interface.dart';

class MethodChannelMyPlugin extends MyPluginPlatform {
  final methodChannel = const MethodChannel('my_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Widget createTextView({required String text}) {
    return Platform.isAndroid
        ? AndroidView(
            viewType: 'my_plugin/text_view',
            creationParams: {'text': text},
            creationParamsCodec: const StandardMessageCodec(),
          )
        : UiKitView(
            viewType: 'my_plugin/text_view',
            creationParams: {'text': text},
            creationParamsCodec: const StandardMessageCodec(),
          );
  }
}
