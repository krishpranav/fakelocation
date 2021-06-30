#import <CoreLocation/CoreLocation.h>

/* Log only on DEBUG builds */
#ifdef DEBUG
#define DebugLog(...) NSLog(@"[fakelocation] " __VA_ARGS__)
#else
#define DebugLog(...)
#endif