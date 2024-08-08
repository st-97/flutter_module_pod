import Flutter
import UIKit
 
public class FlutterPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let factory = MyFlutterPluginFactory(messenger: registrar.messenger())
    registrar.register(factory, withId: "my_flutter_plugin_view")
  }
}

public class MyFlutterPluginFactory: NSObject, FlutterPlatformViewFactory {
  private var messenger: FlutterBinaryMessenger

  init(messenger: FlutterBinaryMessenger) {
    self.messenger = messenger
  }

  public func create(with frame: CGRect, viewIdentifier: Int64, arguments: Any?) -> FlutterPlatformView {
    return MyFlutterPluginView(frame: frame, viewId: viewIdentifier, messenger: messenger, arguments: arguments)
  }
}

public class MyFlutterPluginView: NSObject, FlutterPlatformView {
  private var view: UIView
  private var label: UILabel

  init(frame: CGRect, viewId: Int64, messenger: FlutterBinaryMessenger, arguments: Any?) {
    self.view = UIView(frame: frame)
    self.label = UILabel(frame: view.bounds)
    super.init()

    // Configure the view
    if let args = arguments as? [String: Any] {
      let text = args["text"] as? String ?? ""
      let colorValue = args["color"] as? Int ?? 0
      let color = UIColor(hex: colorValue)

      self.label.text = text
      self.label.textColor = color
      self.label.textAlignment = .center
      self.label.autoresizingMask = [.flexibleWidth, .flexibleHeight]

      self.view.addSubview(label)
    }
  }

  public func view() -> UIView {
    return self.view
  }
}

extension UIColor {
  convenience init(hex: Int) {
    let red = CGFloat((hex >> 16) & 0xFF) / 255.0
    let green = CGFloat((hex >> 8) & 0xFF) / 255.0
    let blue = CGFloat(hex & 0xFF) / 255.0
    self.init(red: red, green: green, blue: blue, alpha: 1.0)
  }
}
