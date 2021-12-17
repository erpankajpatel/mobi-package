#import "MobiConnectPlugin.h"
#if __has_include(<mobi_connect/mobi_connect-Swift.h>)
#import <mobi_connect/mobi_connect-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "mobi_connect-Swift.h"
#endif

@implementation MobiConnectPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMobiConnectPlugin registerWithRegistrar:registrar];
}
@end
