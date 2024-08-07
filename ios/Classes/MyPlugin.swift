import Flutter
import UIKit

 
public class MyPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "my_plugin", binaryMessenger: registrar.messenger())
    let instance = MyPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
    
    // Register the view factory
    registrar.register(TextViewFactory(messenger: registrar.messenger()), withId: "my_plugin/text_view")
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method == "getPlatformVersion" {
      result("iOS " + UIDevice.current.systemVersion)
    } else {
      result(FlutterMethodNotImplemented)
    }
  }
}

// A factory to create a view
public class TextViewFactory: NSObject, FlutterPlatformViewFactory {
  private var messenger: FlutterBinaryMessenger

  init(messenger: FlutterBinaryMessenger) {
    self.messenger = messenger
    super.init()
  }

  public func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> FlutterPlatformView {
    return TextView(frame: frame, viewId: viewId, args: args, messenger: messenger)
  }
}

// A platform view to display text
public class TextView: NSObject, FlutterPlatformView {
  private var label: UILabel

  init(frame: CGRect, viewId: Int64, args: Any?, messenger: FlutterBinaryMessenger) {
    label = UILabel(frame: frame)
    super.init()
    
    if let arguments = args as? [String: Any], let text = arguments["text"] as? String {
      label.text = text
    }
  }

  public func view() -> UIView {
    return label
  }
}
