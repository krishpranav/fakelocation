#import <CoreLocation/CoreLocation.h>

/* Log only on DEBUG builds */
#ifdef DEBUG
#define DebugLog(...) NSLog(@"[fakelocation] " __VA_ARGS__)
#else
#define DebugLog(...)
#endif


%hook CLLocation

CLLocationCoordinate2D location;

-(CLLocationCoordinate2D)coordinate {

    NSString *path = [@"/var/mobile/Library/Preferences" stringByAppendingPathComponent:[@"fun.tweaks.locationfaker" stringByAppendingPathExtension:@"plist"]];
    NSDictionary *conf = [[NSDictionary alloc] initWithContentsOfFile:path];
}