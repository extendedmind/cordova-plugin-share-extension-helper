#import <Cordova/CDVPlugin.h>

@interface ShareExtensionHelper : CDVPlugin

// This method loads a saved link in the CDVViewController class. In this case
// ShareViewController inherit the class CDVViewController.
//
// Please read the README.md for more details how this code is working.
- (void) loadShareLink:(CDVInvokedUrlCommand*)command;

- (void) finishExtension:(CDVInvokedUrlCommand*)command;
@end
