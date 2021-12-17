import Flutter
import UIKit
import PhylloConnect

public class SwiftMobiConnectPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "mobi_connect", binaryMessenger: registrar.messenger())
        let instance = SwiftMobiConnectPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        if call.method == "getPlatformVersion" {
            result("iOS " + UIDevice.current.systemVersion)
            
        } else if call.method == "showToast"{
            let arguments = call.arguments as? NSDictionary
            let msg = arguments!["message"] as? String
            UIAlertView(title:"", message: msg, delegate: nil, cancelButtonTitle: "OK").show()
        }else{
            result(FlutterMethodNotImplemented)
        }
    }
}
