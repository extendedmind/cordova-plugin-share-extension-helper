#import "ShareExtensionHelper.h"
#import "ShareViewController.h"
#import <Cordova/CDV.h>
#import <Cordova/CDVPluginResult.h>

@implementation ShareExtensionHelper
- (void) loadShareLink:(CDVInvokedUrlCommand*)command
{
  ShareViewController *shareView = self.viewController;
  NSURL *urlResult = shareView.linkUrl;
  NSString *titleResult = shareView.linkTitle;
    
  // give the callback
  CDVPluginResult* result = nil;
  if(urlResult != nil)
  {
    NSString *urlString = urlResult.absoluteString;
    result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsArray:[NSArray arrayWithObjects: urlString, titleResult]];
  } else {
    result = [CDVPluginResult resultWithStatus:CDVCommandStatus_IO_EXCEPTION];
  }
  [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

- (void) finishExtension:(CDVInvokedUrlCommand*)command
{
  ShareViewController *shareView = self.viewController;
  [shareView.extensionContext completeRequestReturningItems:nil completionHandler:nil];
}

@end
