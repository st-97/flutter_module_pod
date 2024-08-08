import 'package:flutter/material.dart';

class MyFlutterPluginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Define the view ID and channel name
    final String viewId = 'my_flutter_plugin_view';

    // Create a platform view
    return Container(
      child: UiKitView(
        viewType: viewId,
        onPlatformViewCreated: (int viewId) {
          // Handle view creation if needed
        },
      ),
    );
  }
}
