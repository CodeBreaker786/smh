#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"
#import "GoogleMaps/GoogleMaps.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
  [GMSServices provideAPIKey:@"AIzaSyAp8GNmHL4or79uj3Vl7yfoLpSQ54DAjb4"];
  // [GMSServices provideAPIKey:@"AIzaSyB6SQc8l8BKKKvJuQ0OuN4fwvgLDx3qCk0"];
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
