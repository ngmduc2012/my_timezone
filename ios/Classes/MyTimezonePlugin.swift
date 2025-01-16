import Flutter
import UIKit

public class MyTimezonePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "my_timezone", binaryMessenger: registrar.messenger())
    let instance = MyTimezonePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "getLocalTimezone":
            let timeZone = TimeZone.current
            result(timeZone.identifier)
        case "getAvailableTimezones":
            result(TimeZone.knownTimeZoneIdentifiers)
        default:
            result(FlutterMethodNotImplemented)
        }
    }
}
